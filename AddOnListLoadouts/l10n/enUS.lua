---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES:
    - Keep button text short (max 15 characters recommended)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them
    - "Loadout" refers to a saved configuration of enabled addons
]]

-- Addon Info (shown in addon manager)
L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Save and restore sets of enabled addons"

-- Button and UI Text (keep these short for UI space)
L["LOADOUTS_BUTTON"] = "Loadouts"                  -- Button text on addon list interface
L["SAVE_CURRENT_LOADOUT"] = "Save Current Loadout" -- Menu option
L["NO_LOADOUTS_SAVED"] = "No loadouts saved"       -- Shown when no loadouts exist
L["LOAD"] = "Load"                                 -- Submenu option
L["OVERWRITE"] = "Overwrite"                       -- Submenu option
L["DELETE"] = "Delete"                             -- Submenu option
L["SAVE"] = "Save"                                 -- Dialog button
L["CANCEL"] = "Cancel"                             -- Dialog button
L["RELOAD"] = "Reload"                             -- UI reload prompt button
L["LATER"] = "Later"                               -- UI reload prompt button

-- Tooltip Text (can be longer, provides help information)
L["TOOLTIP_TITLE"] = "AddOn List Loadouts"
L["TOOLTIP_DESCRIPTION"] = "Save and restore sets of enabled addons"
L["TOOLTIP_INSTRUCTIONS"] = "Left-click: Open loadouts menu"

-- Messages (shown in chat/console - %s will be replaced with loadout name, %d with number)
L["LOADOUT_NOT_FOUND"] = "Loadout '%s' not found."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Loadout '%s' applied (no changes needed)."
L["INVALID_LOADOUT_NAME"] = "Invalid loadout name."
L["LOADOUT_SAVED"] = "Loadout '%s' %s with %d addons."        -- %s = name, %s = action, %d = count
L["LOADOUT_DELETED"] = "Loadout '%s' deleted."
L["ADDON_MISSING"] = "%s (missing)"                           -- Shown when addon in loadout is no longer installed
L["ADDON_COUNT_SINGLE"] = "%d addon:"                         -- Tooltip showing count (singular)
L["ADDON_COUNT_PLURAL"] = "%d addons:"                        -- Tooltip showing count (plural)
L["MORE_ADDONS"] = "... and %d more"                          -- Truncated list indicator
L["DATABASE_INITIALIZED"] = "Database initialized. %d loadouts available."
L["ADDON_LOADED"] = "v%s loaded. Enhancing AddOn List..."     -- %s = version number
L["BUTTON_ADDED"] = "Loadouts button added to AddOn List."
L["ADDON_LIST_NOT_FOUND"] = "AddonList frame not found!"      -- Error message
L["DEBUG_MODE"] = "Debug mode enabled. Type %s for commands." -- %s = command

-- Action Text (used in status messages)
L["ACTION_UPDATED"] = "updated" -- Past tense action
L["ACTION_SAVED"] = "saved"     -- Past tense action

-- Static Popup Text (dialog boxes)
L["POPUP_RELOAD_TEXT"] = "Loadout '%s' applied. Reload UI to see changes?"
L["POPUP_SAVE_TEXT"] = "Enter name for new loadout:"
L["POPUP_OVERWRITE_TEXT"] = "Overwrite loadout '%s' with current addon setup?"

-- Slash Command Help (console help text)
L["SLASH_COMMANDS_HEADER"] = "Commands:"
L["SLASH_SAVE_HELP"] = "/all save <name> - Save current addon state as a loadout"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <name> - Overwrite existing loadout with current setup"
L["SLASH_LOAD_HELP"] = "/all load <name> - Load a saved loadout"
L["SLASH_LIST_HELP"] = "/all list - List all saved loadouts"
L["SLASH_DELETE_HELP"] = "/all delete <name> - Delete a loadout"
L["SLASH_GUI_HELP"] = "Or use the Loadouts button in the AddOn List window"

-- Slash Command Usage (error messages when commands used incorrectly)
L["USAGE_SAVE"] = "Usage: /all save <loadout name>"
L["USAGE_OVERWRITE"] = "Usage: /all overwrite <loadout name>"
L["USAGE_LOAD"] = "Usage: /all load <loadout name>"
L["USAGE_DELETE"] = "Usage: /all delete <loadout name>"
L["LOADOUT_DOESNT_EXIST"] = "Loadout '%s' doesn't exist. Use 'save' to create it."

-- List Command Output (console output formatting)
L["SAVED_LOADOUTS_HEADER"] = "Saved loadouts:"
L["LOADOUT_INFO"] = "  %s (%d addons, created %s%s)" -- %s = name, %d = count, %s = date, %s = modified
L["MODIFIED_TEXT"] = ", modified %s"                 -- %s = date, appended to LOADOUT_INFO
L["NO_LOADOUTS"] = "No loadouts saved."

ns.L = L
