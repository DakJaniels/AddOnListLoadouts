--[[
AddOn List Loadouts - Main File
Adds save/load loadout functionality to the native WoW AddOn List.
--]]

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)

-- Initialize localization table (will be populated by localization files)
ns.L = ns.L or {}

-- Localize global API calls
-- Lua standard library
local setmetatable = setmetatable
local unpack = unpack
local pairs = pairs
local ipairs = ipairs
local type = type
local date = date
local print = print
local max = math.max

-- Table functions
local tinsert = table.insert
local tsort = table.sort

-- String functions
local format = string.format
local trim = string.trim

-- WoW API
local RegisterNewSlashCommand = RegisterNewSlashCommand
local UnitGUID = UnitGUID
local GetCVar = GetCVar
local ReloadUI = C_UI and C_UI.Reload
local CreateFrame = CreateFrame
local GetLocale = GetLocale

-- C_AddOns API
local C_AddOns = C_AddOns
local GetNumAddOns = C_AddOns.GetNumAddOns
local GetAddOnInfo = C_AddOns.GetAddOnInfo
local GetAddOnEnableState = C_AddOns.GetAddOnEnableState
local EnableAddOn = C_AddOns.EnableAddOn
local DisableAddOn = C_AddOns.DisableAddOn
local IsAddOnLoaded = C_AddOns.IsAddOnLoaded

-- Enums
local AddOnEnableState = Enum.AddOnEnableState

-- UI Globals
local AddonList = AddonList
local AddonList_Update = AddonList_Update
local StaticPopup_Show = StaticPopup_Show
local StaticPopupDialogs = StaticPopupDialogs
local GameTooltip = GameTooltip
local MenuUtil = MenuUtil

local VERSION = "1.1"

-- Database reference (will be initialized when addon loads)
local db

-- Add metatable fallback for missing localizations
local function defaultFunc(L, key)
    -- If this function was called, we have no localization for this key.
    -- Return the key itself as fallback - this allows the addon to work
    -- even if some translations are missing
    if GetCVar("scriptErrors") == "1" then
        print("|cffff0000" .. L["ADDON_NAME"] .. " Localization:|r Missing key: " .. tostring(key))
    end
    return key
end
local L = ns.L
setmetatable(L, { __index = defaultFunc })

-- Validation function for debugging localization issues
local function ValidateLocalization()
    if GetCVar("scriptErrors") == "1" then
        local missingKeys = {}
        local invalidValues = {}

        -- Check for common localization issues
        for key, value in pairs(L) do
            if type(value) ~= "string" then
                tinsert(invalidValues, { key = key, type = type(value) })
            elseif value == key then
                -- This might indicate a missing translation (using fallback)
                tinsert(missingKeys, key)
            end
        end

        -- Report issues if found
        if #invalidValues > 0 then
            print("|cffff0000" .. L["ADDON_NAME"] .. " Localization:|r Invalid value types found:")
            for _, item in ipairs(invalidValues) do
                print("  " .. item.key .. " = " .. item.type)
            end
        end

        if #missingKeys > 0 then
            print("|cffffff00" .. L["ADDON_NAME"] .. " Localization:|r Potential missing translations:")
            for _, key in ipairs(missingKeys) do
                print("  " .. key)
            end
        end

        local totalKeys = 0
        for _ in pairs(L) do totalKeys = totalKeys + 1 end
        print("|cff00ff00" ..
            L["ADDON_NAME"] .. " Localization:|r " .. totalKeys .. " localization keys loaded for " .. GetLocale())
    end
end

-- Main addon frame
local AddOnListLoadouts = CreateFrame("Frame")
AddOnListLoadouts:RegisterEvent("ADDON_LOADED")
AddOnListLoadouts:RegisterEvent("PLAYER_LOGIN")

-- Utility functions
local function GetCurrentCharacter()
    return UnitGUID("player")
end

local function GetCurrentLoadout()
    local character = GetCurrentCharacter()
    local enabledAddons = {}

    for i = 1, GetNumAddOns() do
        local name = GetAddOnInfo(i)
        if name and GetAddOnEnableState(i, character) > AddOnEnableState.None then
            tinsert(enabledAddons, name)
        end
    end

    return enabledAddons
end

local function ApplyLoadout(loadoutName)
    if not db.loadouts[loadoutName] then
        print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. format(L["LOADOUT_NOT_FOUND"], loadoutName))
        return
    end

    local character = GetCurrentCharacter()
    local loadout = db.loadouts[loadoutName]
    local addonSet = {}

    -- Create a set for quick lookup
    for _, addonName in ipairs(loadout.addons) do
        addonSet[addonName] = true
    end

    local changesRequired = false

    -- Disable all addons first, then enable the ones in the loadout
    for i = 1, GetNumAddOns() do
        local name = GetAddOnInfo(i)
        if name then
            local shouldBeEnabled = addonSet[name] ~= nil
            local currentlyEnabled = GetAddOnEnableState(i, character) > AddOnEnableState.None

            if shouldBeEnabled ~= currentlyEnabled then
                if shouldBeEnabled then
                    EnableAddOn(i, character)
                else
                    -- Don't disable protected addons
                    if name ~= L["ADDON_NAME"] then
                        DisableAddOn(i, character)
                    end
                end
                changesRequired = true
            end
        end
    end

    -- Update the UI if it's open
    if AddonList and AddonList:IsShown() then
        AddonList_Update()
    end

    -- Prompt for reload if changes were made
    if changesRequired then
        StaticPopup_Show("ADDON_LIST_LOADOUTS_RELOAD", loadoutName)
    else
        print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " .. format(L["LOADOUT_APPLIED_NO_CHANGES"], loadoutName))
    end
end

local function SaveLoadout(loadoutName, isOverwrite)
    if not loadoutName or trim(loadoutName) == "" then
        print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. L["INVALID_LOADOUT_NAME"])
        return
    end

    local currentAddons = GetCurrentLoadout()
    local actionText = isOverwrite and L["ACTION_UPDATED"] or L["ACTION_SAVED"]

    db.loadouts[loadoutName] =
    {
        addons = currentAddons,
        created = date("%Y-%m-%d %H:%M:%S"),
        lastModified = isOverwrite and date("%Y-%m-%d %H:%M:%S") or nil
    }

    print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " ..
        format(L["LOADOUT_SAVED"], loadoutName, actionText, #currentAddons))
end

local function DeleteLoadout(loadoutName)
    if db.loadouts[loadoutName] then
        db.loadouts[loadoutName] = nil
        print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " .. format(L["LOADOUT_DELETED"], loadoutName))
    else
        print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. format(L["LOADOUT_NOT_FOUND"], loadoutName))
    end
end

local function GetLoadoutNames()
    local names = {}
    for name, _ in pairs(db.loadouts) do
        tinsert(names, name)
    end
    tsort(names)
    return names
end

-- Static popup for reload confirmation
StaticPopupDialogs["ADDON_LIST_LOADOUTS_RELOAD"] =
{
    text = L["POPUP_RELOAD_TEXT"],
    button1 = L["RELOAD"],
    button2 = L["LATER"],
    OnAccept = function ()
        ReloadUI()
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
}

-- Static popup for saving new loadout
StaticPopupDialogs["ADDON_LIST_LOADOUTS_SAVE"] =
{
    text = L["POPUP_SAVE_TEXT"],
    button1 = L["SAVE"],
    button2 = L["CANCEL"],
    hasEditBox = true,
    OnAccept = function (self)
        local text = self.editBox:GetText()
        if text and trim(text) ~= "" then
            SaveLoadout(trim(text), false)
        end
    end,
    EditBoxOnEnterPressed = function (self)
        local text = self:GetText()
        if text and trim(text) ~= "" then
            SaveLoadout(trim(text), false)
        end
        self:GetParent():Hide()
    end,
    EditBoxOnEscapePressed = function (self)
        self:GetParent():Hide()
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
}

-- Static popup for overwriting existing loadout
StaticPopupDialogs["ADDON_LIST_LOADOUTS_OVERWRITE"] =
{
    text = L["POPUP_OVERWRITE_TEXT"],
    button1 = L["OVERWRITE"],
    button2 = L["CANCEL"],
    OnAccept = function (self)
        if self.data then
            SaveLoadout(self.data, true)
        end
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
}

-- Create the loadouts dropdown menu
local function ShowLoadoutsMenu(parent)
    local function MenuGenerator(owner, rootDescription)
        rootDescription:SetTag("MENU_ADDON_LIST_LOADOUTS")

        -- Add "Save Current" option
        rootDescription:CreateButton(L["SAVE_CURRENT_LOADOUT"], function ()
            StaticPopup_Show("ADDON_LIST_LOADOUTS_SAVE")
        end)

        rootDescription:CreateDivider()

        -- Add existing loadouts
        local loadoutNames = GetLoadoutNames()
        if #loadoutNames > 0 then
            for _, name in ipairs(loadoutNames) do
                local submenu = rootDescription:CreateButton(name, function ()
                    ApplyLoadout(name)
                end)

                -- Add tooltip to show loadout contents
                -- Show only the addon count for cleaner UI
                local loadout = db.loadouts[name]
                local addonCount = #loadout.addons
                local addonText = addonCount == 1 and
                    format(L["ADDON_COUNT_SINGLE"], addonCount) or
                    format(L["ADDON_COUNT_PLURAL"], addonCount)
                submenu:CreateTitle(addonText)

                submenu:CreateDivider()

                -- Add submenu actions for each loadout
                submenu:CreateButton(L["LOAD"], function ()
                    ApplyLoadout(name)
                end)

                submenu:CreateButton(L["OVERWRITE"], function ()
                    StaticPopup_Show("ADDON_LIST_LOADOUTS_OVERWRITE", name, nil, name)
                end)

                submenu:CreateDivider()

                submenu:CreateButton(L["DELETE"], function ()
                    DeleteLoadout(name)
                end)
            end
        else
            local noLoadouts = rootDescription:CreateButton(L["NO_LOADOUTS_SAVED"], function () end)
            noLoadouts:SetEnabled(false)
        end
    end

    MenuUtil.CreateContextMenu(parent, MenuGenerator)
end

-- Main enhancement function
local function EnhanceAddOnList()
    if not AddonList then
        print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. L["ADDON_LIST_NOT_FOUND"])
        return
    end

    -- Don't enhance if we already did
    if AddonList.AddOnListLoadoutsButton then
        return
    end

    -- Create the Loadouts button
    local btn = CreateFrame("Button", "AddOnListLoadoutsButton", AddonList, "UIPanelButtonTemplate")
    btn:SetText(L["LOADOUTS_BUTTON"])

    -- Calculate dynamic width based on text length
    local fontString = btn:GetFontString()
    local textWidth = fontString:GetStringWidth()
    local padding = 20  -- Extra padding for visual comfort
    local minWidth = 80 -- Minimum width to maintain consistency
    local calculatedWidth = max(textWidth + padding, minWidth)

    btn:SetSize(calculatedWidth, 22)

    -- Position it next to the existing buttons
    btn:SetPoint("TOPLEFT", AddonList.DisableAllButton, "TOPRIGHT", 5, 0)

    -- Set up the click handler
    btn:SetScript("OnClick", function (self)
        ShowLoadoutsMenu(self)
    end)

    -- Add tooltip
    btn:SetScript("OnEnter", function (self)
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:SetText(L["TOOLTIP_TITLE"], 1, 1, 1)
        GameTooltip:AddLine(L["TOOLTIP_DESCRIPTION"], nil, nil, nil, true)
        GameTooltip:AddLine(L["TOOLTIP_INSTRUCTIONS"], 0.5, 0.5, 0.5)
        GameTooltip:Show()
    end)

    btn:SetScript("OnLeave", function ()
        GameTooltip:Hide()
    end)

    -- Store reference so we don't duplicate
    AddonList.AddOnListLoadoutsButton = btn

    if not IsAddOnLoaded("ElvUI") then return end
    ---@diagnostic disable-next-line: undefined-global
    local E = unpack(ElvUI) --Import: Engine
    local S = E:GetModule("Skins")
    S:HandleButton(btn)
    --print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " .. L["BUTTON_ADDED"])
end

-- Initialize database
local function InitializeDatabase()
    -- Initialize saved variables (this runs after they're loaded)
    AddOnListLoadoutsDB = AddOnListLoadoutsDB or
        {
            loadouts = {},
            version = VERSION
        }

    db = AddOnListLoadoutsDB

    -- Migration/upgrade logic can go here if needed
    if not db.version or db.version ~= VERSION then
        db.version = VERSION
    end

    local loadoutCount = 0
    for _ in pairs(db.loadouts) do
        loadoutCount = loadoutCount + 1
    end

    -- Validate localization if debug mode is enabled
    ValidateLocalization()

    --print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " .. format(L["DATABASE_INITIALIZED"], loadoutCount))
end

-- Slash command handler function
local function HandleSlashCommand(msg)
    local cmd, arg = msg:match("^(%S*)%s*(.-)$")
    cmd = cmd:lower()

    if cmd == "save" then
        if arg and trim(arg) ~= "" then
            SaveLoadout(trim(arg), false)
        else
            print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. L["USAGE_SAVE"])
        end
    elseif cmd == "overwrite" then
        if arg and trim(arg) ~= "" then
            local name = trim(arg)
            if db.loadouts[name] then
                SaveLoadout(name, true)
            else
                print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. format(L["LOADOUT_DOESNT_EXIST"], name))
            end
        else
            print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. L["USAGE_OVERWRITE"])
        end
    elseif cmd == "load" then
        if arg and trim(arg) ~= "" then
            ApplyLoadout(trim(arg))
        else
            print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. L["USAGE_LOAD"])
        end
    elseif cmd == "list" then
        local loadoutNames = GetLoadoutNames()
        if #loadoutNames > 0 then
            print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " .. L["SAVED_LOADOUTS_HEADER"])
            for _, name in ipairs(loadoutNames) do
                local loadout = db.loadouts[name]
                local modifiedText = loadout.lastModified and format(L["MODIFIED_TEXT"], loadout.lastModified) or ""
                print(format(L["LOADOUT_INFO"], name, #loadout.addons, loadout.created, modifiedText))
            end
        else
            print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " .. L["NO_LOADOUTS"])
        end
    elseif cmd == "delete" then
        if arg and trim(arg) ~= "" then
            DeleteLoadout(trim(arg))
        else
            print("|cffff0000" .. L["ADDON_TITLE"] .. ":|r " .. L["USAGE_DELETE"])
        end
    else
        print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " .. L["SLASH_COMMANDS_HEADER"])
        print("  " .. L["SLASH_SAVE_HELP"])
        print("  " .. L["SLASH_OVERWRITE_HELP"])
        print("  " .. L["SLASH_LOAD_HELP"])
        print("  " .. L["SLASH_LIST_HELP"])
        print("  " .. L["SLASH_DELETE_HELP"])
        print("  " .. L["SLASH_GUI_HELP"])
    end
end

-- Slash command registration with modern WoW system
local function RegisterSlashCommands()
    RegisterNewSlashCommand(HandleSlashCommand, "all", "addonlistloadouts")
end

-- Event handler
AddOnListLoadouts:SetScript("OnEvent", function (self, event, addonName)
    if event == "ADDON_LOADED" then
        if addonName == "Blizzard_AddOnList" then
            -- Blizzard's AddOnList is loaded, we can enhance it
            EnhanceAddOnList()
        elseif addonName == "AddOnListLoadouts" then
            -- Our addon is loaded, initialize the database
            InitializeDatabase()
            -- Register slash commands
            RegisterSlashCommands()
            -- print("|cff00ff00" .. L["ADDON_TITLE"] .. ":|r " .. format(L["ADDON_LOADED"], VERSION))
        end
    elseif event == "PLAYER_LOGIN" then
        -- Try to enhance again in case we missed the addon load
        if AddonList and not AddonList.AddOnListLoadoutsButton then
            EnhanceAddOnList()
        end
    end
end)
