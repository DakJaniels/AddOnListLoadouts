if GetLocale() ~= "ptPT" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR PORTUGUESE - PORTUGAL (ptPT):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    EUROPEAN PORTUGUESE CONSIDERATIONS:
    - "Loadout" = "Configuração" (f.) (setup/configuration context)
    - Use proper gender agreement (a configuração, o addon)
    - Portuguese text typically 15-25% longer than English - test UI layout
    - Use European Portuguese terms vs Brazilian Portuguese variants
    - Consider accent marks and special characters (ã, ç, á, é, í, ó, ú, etc.)
    - Use formal "vossa" vs informal based on WoW Portugal localization style
    - Apply European Portuguese spelling (e.g., "acção" not "ação")
    - Use European vocabulary preferences (computador, apagar vs deletar, etc.)
    - Consider European Portuguese pronunciation differences

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Test button text lengths as Portuguese can be significantly longer
    - Ensure proper encoding for special characters and cedillas
    - Consider European number/date formatting conventions
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Guardar e restaurar conjuntos de add-ons activados"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "Configurações"
L["SAVE_CURRENT_LOADOUT"] = "Guardar configuração actual"
L["NO_LOADOUTS_SAVED"] = "Nenhuma configuração guardada"
L["LOAD"] = "Carregar"
L["OVERWRITE"] = "Sobrescrever"
L["DELETE"] = "Eliminar"
L["SAVE"] = "Guardar"
L["CANCEL"] = "Cancelar"
L["RELOAD"] = "Recarregar"
L["LATER"] = "Mais tarde"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "Configurações de AddOns"
L["TOOLTIP_DESCRIPTION"] = "Guardar e restaurar conjuntos de add-ons activados"
L["TOOLTIP_INSTRUCTIONS"] = "Clique esquerdo: Abrir menu de configurações"

-- Messages
L["LOADOUT_NOT_FOUND"] = "Configuração '%s' não encontrada."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Configuração '%s' aplicada (nenhuma alteração necessária)."
L["INVALID_LOADOUT_NAME"] = "Nome de configuração inválido."
L["LOADOUT_SAVED"] = "Configuração '%s' %s com %d add-ons."
L["LOADOUT_DELETED"] = "Configuração '%s' eliminada."
L["ADDON_MISSING"] = "%s (em falta)"
L["ADDON_COUNT_SINGLE"] = "%d add-on:"
L["ADDON_COUNT_PLURAL"] = "%d add-ons:"
L["MORE_ADDONS"] = "... e mais %d"
L["DATABASE_INITIALIZED"] = "Base de dados inicializada. %d configurações disponíveis."
L["ADDON_LOADED"] = "v%s carregado. A melhorar lista de AddOns..."
L["BUTTON_ADDED"] = "Botão Configurações adicionado à lista de AddOns."
L["ADDON_LIST_NOT_FOUND"] = "Quadro AddonList não encontrado!"
L["DEBUG_MODE"] = "Modo de depuração activado. Digite %s para comandos."

-- Action Text
L["ACTION_UPDATED"] = "actualizada"
L["ACTION_SAVED"] = "guardada"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "Configuração '%s' aplicada. Recarregar interface para ver as alterações?"
L["POPUP_SAVE_TEXT"] = "Digite o nome para nova configuração:"
L["POPUP_OVERWRITE_TEXT"] = "Sobrescrever configuração '%s' com a configuração actual de add-ons?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "Comandos:"
L["SLASH_SAVE_HELP"] = "/all save <nome> - Guardar estado actual de add-ons como configuração"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <nome> - Sobrescrever configuração existente com configuração actual"
L["SLASH_LOAD_HELP"] = "/all load <nome> - Carregar configuração guardada"
L["SLASH_LIST_HELP"] = "/all list - Listar todas as configurações guardadas"
L["SLASH_DELETE_HELP"] = "/all delete <nome> - Eliminar configuração"
L["SLASH_GUI_HELP"] = "Ou use o botão Configurações na janela da lista de AddOns"

-- Slash Command Usage
L["USAGE_SAVE"] = "Utilização: /all save <nome da configuração>"
L["USAGE_OVERWRITE"] = "Utilização: /all overwrite <nome da configuração>"
L["USAGE_LOAD"] = "Utilização: /all load <nome da configuração>"
L["USAGE_DELETE"] = "Utilização: /all delete <nome da configuração>"
L["LOADOUT_DOESNT_EXIST"] = "A configuração '%s' não existe. Use 'save' para criá-la."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "Configurações guardadas:"
L["LOADOUT_INFO"] = "  %s (%d add-ons, criada %s%s)"
L["MODIFIED_TEXT"] = ", modificada %s"
L["NO_LOADOUTS"] = "Nenhuma configuração guardada."

ns.L = L
