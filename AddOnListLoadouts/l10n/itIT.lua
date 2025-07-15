if GetLocale() ~= "itIT" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR ITALIAN (itIT):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    ITALIAN-SPECIFIC CONSIDERATIONS:
    - "Loadout" = "Configurazione" (f.) (setup/configuration context)
    - Use proper gender agreement (la configurazione, l'addon)
    - Italian text typically 10-20% longer than English - test UI layout
    - Use formal "Lei" vs informal "tu" based on WoW Italian localization
    - Consider accent marks and special characters (à, è, é, ì, ò, ù)
    - Apply Italian capitalization rules (sentence case for most titles)
    - Use proper Italian syntax and word order
    - Consider double consonants and Italian phonetics

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Test button text lengths as Italian can be longer than English
    - Ensure proper encoding for accented characters
    - Consider Italian plural forms (o→i, a→e)
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Salva e ripristina insiemi di addon abilitati"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "Configurazioni"
L["SAVE_CURRENT_LOADOUT"] = "Salva configurazione attuale"
L["NO_LOADOUTS_SAVED"] = "Nessuna configurazione salvata"
L["LOAD"] = "Carica"
L["OVERWRITE"] = "Sovrascrivi"
L["DELETE"] = "Elimina"
L["SAVE"] = "Salva"
L["CANCEL"] = "Annulla"
L["RELOAD"] = "Ricarica"
L["LATER"] = "Più tardi"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "Configurazioni AddOn"
L["TOOLTIP_DESCRIPTION"] = "Salva e ripristina insiemi di addon abilitati"
L["TOOLTIP_INSTRUCTIONS"] = "Clic sinistro: Apri menu configurazioni"

-- Messages
L["LOADOUT_NOT_FOUND"] = "Configurazione '%s' non trovata."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Configurazione '%s' applicata (nessuna modifica necessaria)."
L["INVALID_LOADOUT_NAME"] = "Nome configurazione non valido."
L["LOADOUT_SAVED"] = "Configurazione '%s' %s con %d addon."
L["LOADOUT_DELETED"] = "Configurazione '%s' eliminata."
L["ADDON_MISSING"] = "%s (mancante)"
L["ADDON_COUNT_SINGLE"] = "%d addon:"
L["ADDON_COUNT_PLURAL"] = "%d addon:"
L["MORE_ADDONS"] = "... e %d altri"
L["DATABASE_INITIALIZED"] = "Database inizializzato. %d configurazioni disponibili."
L["ADDON_LOADED"] = "v%s caricato. Miglioramento lista AddOn..."
L["BUTTON_ADDED"] = "Pulsante Configurazioni aggiunto alla lista AddOn."
L["ADDON_LIST_NOT_FOUND"] = "Frame AddonList non trovato!"
L["DEBUG_MODE"] = "Modalità debug abilitata. Digitare %s per i comandi."

-- Action Text
L["ACTION_UPDATED"] = "aggiornata"
L["ACTION_SAVED"] = "salvata"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "Configurazione '%s' applicata. Ricaricare l'interfaccia per vedere le modifiche?"
L["POPUP_SAVE_TEXT"] = "Inserisci nome per nuova configurazione:"
L["POPUP_OVERWRITE_TEXT"] = "Sovrascrivere configurazione '%s' con l'impostazione addon attuale?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "Comandi:"
L["SLASH_SAVE_HELP"] = "/all save <nome> - Salva stato addon attuale come configurazione"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <nome> - Sovrascrivi configurazione esistente con impostazione attuale"
L["SLASH_LOAD_HELP"] = "/all load <nome> - Carica configurazione salvata"
L["SLASH_LIST_HELP"] = "/all list - Elenca tutte le configurazioni salvate"
L["SLASH_DELETE_HELP"] = "/all delete <nome> - Elimina configurazione"
L["SLASH_GUI_HELP"] = "O usa il pulsante Configurazioni nella finestra lista AddOn"

-- Slash Command Usage
L["USAGE_SAVE"] = "Uso: /all save <nome configurazione>"
L["USAGE_OVERWRITE"] = "Uso: /all overwrite <nome configurazione>"
L["USAGE_LOAD"] = "Uso: /all load <nome configurazione>"
L["USAGE_DELETE"] = "Uso: /all delete <nome configurazione>"
L["LOADOUT_DOESNT_EXIST"] = "La configurazione '%s' non esiste. Usa 'save' per crearla."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "Configurazioni salvate:"
L["LOADOUT_INFO"] = "  %s (%d addon, creata %s%s)"
L["MODIFIED_TEXT"] = ", modificata %s"
L["NO_LOADOUTS"] = "Nessuna configurazione salvata."

ns.L = L
