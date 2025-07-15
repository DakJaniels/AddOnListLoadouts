if GetLocale() ~= "enGB" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR BRITISH ENGLISH (enGB):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    BRITISH ENGLISH CONSIDERATIONS:
    - Use British spelling: "colour" not "color", "realise" not "realize"
    - Use British terminology: "bin" for delete, "tick" for check, etc.
    - Maintain consistency with Blizzard's British English WoW localization
    - Consider British punctuation rules (single quotes, etc.)
    - "Loadout" refers to a saved configuration of enabled addons

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Maintain same string lengths as US English version for UI compatibility
]]

-- Addon Info
L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Save and restore sets of enabled addons"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "Loadouts"
L["SAVE_CURRENT_LOADOUT"] = "Save Current Loadout"
L["NO_LOADOUTS_SAVED"] = "No loadouts saved"
L["LOAD"] = "Load"
L["OVERWRITE"] = "Overwrite"
L["DELETE"] = "Delete"
L["SAVE"] = "Save"
L["CANCEL"] = "Cancel"
L["RELOAD"] = "Reload"
L["LATER"] = "Later"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "AddOn List Loadouts"
L["TOOLTIP_DESCRIPTION"] = "Save and restore sets of enabled addons"
L["TOOLTIP_INSTRUCTIONS"] = "Left-click: Open loadouts menu"

-- Messages
L["LOADOUT_NOT_FOUND"] = "Loadout '%s' not found."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Loadout '%s' applied (no changes needed)."
L["INVALID_LOADOUT_NAME"] = "Invalid loadout name."
L["LOADOUT_SAVED"] = "Loadout '%s' %s with %d addons."
L["LOADOUT_DELETED"] = "Loadout '%s' deleted."
L["ADDON_MISSING"] = "%s (missing)"
L["ADDON_COUNT_SINGLE"] = "%d addon:"
L["ADDON_COUNT_PLURAL"] = "%d addons:"
L["MORE_ADDONS"] = "... and %d more"
L["DATABASE_INITIALIZED"] = "Database initialized. %d loadouts available."
L["ADDON_LOADED"] = "v%s loaded. Enhancing AddOn List..."
L["BUTTON_ADDED"] = "Loadouts button added to AddOn List."
L["ADDON_LIST_NOT_FOUND"] = "AddonList frame not found!"
L["DEBUG_MODE"] = "Debug mode enabled. Type %s for commands."

-- Action Text
L["ACTION_UPDATED"] = "updated"
L["ACTION_SAVED"] = "saved"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "Loadout '%s' applied. Reload UI to see changes?"
L["POPUP_SAVE_TEXT"] = "Enter name for new loadout:"
L["POPUP_OVERWRITE_TEXT"] = "Overwrite loadout '%s' with current addon setup?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "Commands:"
L["SLASH_SAVE_HELP"] = "/all save <name> - Save current addon state as a loadout"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <name> - Overwrite existing loadout with current setup"
L["SLASH_LOAD_HELP"] = "/all load <name> - Load a saved loadout"
L["SLASH_LIST_HELP"] = "/all list - List all saved loadouts"
L["SLASH_DELETE_HELP"] = "/all delete <name> - Delete a loadout"
L["SLASH_GUI_HELP"] = "Or use the Loadouts button in the AddOn List window"

-- Slash Command Usage
L["USAGE_SAVE"] = "Usage: /all save <loadout name>"
L["USAGE_OVERWRITE"] = "Usage: /all overwrite <loadout name>"
L["USAGE_LOAD"] = "Usage: /all load <loadout name>"
L["USAGE_DELETE"] = "Usage: /all delete <loadout name>"
L["LOADOUT_DOESNT_EXIST"] = "Loadout '%s' doesn't exist. Use 'save' to create it."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "Saved loadouts:"
L["LOADOUT_INFO"] = "  %s (%d addons, created %s%s)"
L["MODIFIED_TEXT"] = ", modified %s"
L["NO_LOADOUTS"] = "No loadouts saved."

ns.L = L
