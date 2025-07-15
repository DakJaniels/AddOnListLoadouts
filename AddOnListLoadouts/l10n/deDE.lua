if GetLocale() ~= "deDE" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR GERMAN (deDE):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    GERMAN-SPECIFIC CONSIDERATIONS:
    - "Loadout" = "Ausrüstung" (equipment/gear setup context)
    - "AddOn" should remain "AddOn" (standard WoW German terminology)
    - German compound words can be very long - test UI layout carefully
    - Use proper German plural forms (der/die/das articles)
    - Preserve capitalization rules (nouns should be capitalized)
    - Consider formal vs informal address (use "Sie" for consistency with WoW)
    - Test button text with longer German words to ensure UI doesn't break

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Test tooltip text lengths as German tends to be 20-30% longer than English
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Speichere und lade Gruppen aktivierter AddOns"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "Ausrüstungen"
L["SAVE_CURRENT_LOADOUT"] = "Aktuelle Ausrüstung speichern"
L["NO_LOADOUTS_SAVED"] = "Keine Ausrüstungen gespeichert"
L["LOAD"] = "Laden"
L["OVERWRITE"] = "Überschreiben"
L["DELETE"] = "Löschen"
L["SAVE"] = "Speichern"
L["CANCEL"] = "Abbrechen"
L["RELOAD"] = "Neu laden"
L["LATER"] = "Später"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "AddOn-Listen Ausrüstungen"
L["TOOLTIP_DESCRIPTION"] = "Speichere und lade Gruppen aktivierter AddOns"
L["TOOLTIP_INSTRUCTIONS"] = "Linksklick: Ausrüstungsmenü öffnen"

-- Messages
L["LOADOUT_NOT_FOUND"] = "Ausrüstung '%s' nicht gefunden."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Ausrüstung '%s' angewendet (keine Änderungen erforderlich)."
L["INVALID_LOADOUT_NAME"] = "Ungültiger Ausrüstungsname."
L["LOADOUT_SAVED"] = "Ausrüstung '%s' %s mit %d AddOns."
L["LOADOUT_DELETED"] = "Ausrüstung '%s' gelöscht."
L["ADDON_MISSING"] = "%s (fehlt)"
L["ADDON_COUNT_SINGLE"] = "%d AddOn:"
L["ADDON_COUNT_PLURAL"] = "%d AddOns:"
L["MORE_ADDONS"] = "... und %d weitere"
L["DATABASE_INITIALIZED"] = "Datenbank initialisiert. %d Ausrüstungen verfügbar."
L["ADDON_LOADED"] = "v%s geladen. AddOn-Liste wird erweitert..."
L["BUTTON_ADDED"] = "Ausrüstungs-Button zur AddOn-Liste hinzugefügt."
L["ADDON_LIST_NOT_FOUND"] = "AddonList-Frame nicht gefunden!"
L["DEBUG_MODE"] = "Debug-Modus aktiviert. Geben Sie %s für Befehle ein."

-- Action Text
L["ACTION_UPDATED"] = "aktualisiert"
L["ACTION_SAVED"] = "gespeichert"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "Ausrüstung '%s' angewendet. Benutzeroberfläche neu laden, um Änderungen zu sehen?"
L["POPUP_SAVE_TEXT"] = "Name für neue Ausrüstung eingeben:"
L["POPUP_OVERWRITE_TEXT"] = "Ausrüstung '%s' mit aktueller AddOn-Konfiguration überschreiben?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "Befehle:"
L["SLASH_SAVE_HELP"] = "/all save <name> - Aktueller AddOn-Status als Ausrüstung speichern"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <name> - Bestehende Ausrüstung mit aktueller Konfiguration überschreiben"
L["SLASH_LOAD_HELP"] = "/all load <name> - Gespeicherte Ausrüstung laden"
L["SLASH_LIST_HELP"] = "/all list - Alle gespeicherten Ausrüstungen auflisten"
L["SLASH_DELETE_HELP"] = "/all delete <name> - Ausrüstung löschen"
L["SLASH_GUI_HELP"] = "Oder verwenden Sie den Ausrüstungs-Button im AddOn-Listen-Fenster"

-- Slash Command Usage
L["USAGE_SAVE"] = "Verwendung: /all save <Ausrüstungsname>"
L["USAGE_OVERWRITE"] = "Verwendung: /all overwrite <Ausrüstungsname>"
L["USAGE_LOAD"] = "Verwendung: /all load <Ausrüstungsname>"
L["USAGE_DELETE"] = "Verwendung: /all delete <Ausrüstungsname>"
L["LOADOUT_DOESNT_EXIST"] = "Ausrüstung '%s' existiert nicht. Verwenden Sie 'save', um sie zu erstellen."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "Gespeicherte Ausrüstungen:"
L["LOADOUT_INFO"] = "  %s (%d AddOns, erstellt %s%s)"
L["MODIFIED_TEXT"] = ", geändert %s"
L["NO_LOADOUTS"] = "Keine Ausrüstungen gespeichert."

ns.L = L
