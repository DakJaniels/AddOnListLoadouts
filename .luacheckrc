-- Luacheck configuration for WoW addons
std = "lua51"

-- Maximum line length
max_line_length = 120

-- WoW globals that are allowed to be read
read_globals =
{
    -- Standard WoW API
    "UnitGUID",
    "GetCVar",
    "ReloadUI",
    "CreateFrame",
    "GetLocale",
    "RegisterNewSlashCommand",
    "AddonList_Update",
    "StaticPopup_Show",
    "GameTooltip",
    "MenuUtil",
    "date",

    -- WoW API namespaces
    "C_AddOns",
    "C_UI",
    "Enum",

    -- addons
    "ElvUI",

    -- WoW string extensions
    string =
    {
        fields =
        {
            "trim"
        }
    }
}

-- Globals that are allowed to be set
globals =
{
    -- Slash command globals
    "SLASH_ADDONLISTLOADOUTS1",
    "SLASH_ADDONLISTLOADOUTS2",

    -- Saved variables
    "AddOnListLoadoutsDB",

    -- WoW globals that can be modified
    "SlashCmdList",
    "StaticPopupDialogs",
    "AddonList",
}

-- Ignore specific warnings
ignore =
{
    "212", -- unused argument
    "611", -- line contains trailing whitespace
}
