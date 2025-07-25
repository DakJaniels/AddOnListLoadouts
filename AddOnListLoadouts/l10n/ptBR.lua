if GetLocale() ~= "ptBR" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR PORTUGUESE - BRAZIL (ptBR):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    BRAZILIAN PORTUGUESE CONSIDERATIONS:
    - "Loadout" = "Configuração" (f.) (setup/configuration context)
    - Use proper gender agreement (a configuração, o addon)
    - Portuguese text typically 15-25% longer than English - test UI layout
    - Use Brazilian Portuguese terms vs European Portuguese variants
    - Consider accent marks and special characters (ã, ç, á, é, í, ó, ú, etc.)
    - Use informal "você" vs formal based on WoW Brazil localization style
    - Apply Brazilian Portuguese spelling (e.g., "ação" not "acção")
    - Use Brazilian vocabulary preferences (computador, deletar, etc.)

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Test button text lengths as Portuguese can be significantly longer
    - Ensure proper encoding for special characters and cedillas
    - Consider Brazilian number/date formatting conventions
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Salve e restaure conjuntos de addons habilitados"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "Configurações"
L["SAVE_CURRENT_LOADOUT"] = "Salvar configuração atual"
L["NO_LOADOUTS_SAVED"] = "Nenhuma configuração salva"
L["LOAD"] = "Carregar"
L["OVERWRITE"] = "Sobrescrever"
L["DELETE"] = "Excluir"
L["SAVE"] = "Salvar"
L["CANCEL"] = "Cancelar"
L["RELOAD"] = "Recarregar"
L["LATER"] = "Mais tarde"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "Configurações de AddOns"
L["TOOLTIP_DESCRIPTION"] = "Salve e restaure conjuntos de addons habilitados"
L["TOOLTIP_INSTRUCTIONS"] = "Clique esquerdo: Abrir menu de configurações"

-- Messages
L["LOADOUT_NOT_FOUND"] = "Configuração '%s' não encontrada."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Configuração '%s' aplicada (nenhuma alteração necessária)."
L["INVALID_LOADOUT_NAME"] = "Nome de configuração inválido."
L["LOADOUT_SAVED"] = "Configuração '%s' %s com %d addons."
L["LOADOUT_DELETED"] = "Configuração '%s' excluída."
L["ADDON_MISSING"] = "%s (ausente)"
L["ADDON_COUNT_SINGLE"] = "%d addon:"
L["ADDON_COUNT_PLURAL"] = "%d addons:"
L["MORE_ADDONS"] = "... e mais %d"
L["DATABASE_INITIALIZED"] = "Banco de dados inicializado. %d configurações disponíveis."
L["ADDON_LOADED"] = "v%s carregado. Aprimorando lista de AddOns..."
L["BUTTON_ADDED"] = "Botão Configurações adicionado à lista de AddOns."
L["ADDON_LIST_NOT_FOUND"] = "Frame AddonList não encontrado!"
L["DEBUG_MODE"] = "Modo de depuração habilitado. Digite %s para comandos."

-- Action Text
L["ACTION_UPDATED"] = "atualizada"
L["ACTION_SAVED"] = "salva"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "Configuração '%s' aplicada. Recarregar interface para ver as alterações?"
L["POPUP_SAVE_TEXT"] = "Digite o nome para nova configuração:"
L["POPUP_OVERWRITE_TEXT"] = "Sobrescrever configuração '%s' com a configuração atual de addons?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "Comandos:"
L["SLASH_SAVE_HELP"] = "/all save <nome> - Salvar estado atual de addons como configuração"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <nome> - Sobrescrever configuração existente com configuração atual"
L["SLASH_LOAD_HELP"] = "/all load <nome> - Carregar configuração salva"
L["SLASH_LIST_HELP"] = "/all list - Listar todas as configurações salvas"
L["SLASH_DELETE_HELP"] = "/all delete <nome> - Excluir configuração"
L["SLASH_GUI_HELP"] = "Ou use o botão Configurações na janela da lista de AddOns"

-- Slash Command Usage
L["USAGE_SAVE"] = "Uso: /all save <nome da configuração>"
L["USAGE_OVERWRITE"] = "Uso: /all overwrite <nome da configuração>"
L["USAGE_LOAD"] = "Uso: /all load <nome da configuração>"
L["USAGE_DELETE"] = "Uso: /all delete <nome da configuração>"
L["LOADOUT_DOESNT_EXIST"] = "A configuração '%s' não existe. Use 'save' para criá-la."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "Configurações salvas:"
L["LOADOUT_INFO"] = "  %s (%d addons, criada %s%s)"
L["MODIFIED_TEXT"] = ", modificada %s"
L["NO_LOADOUTS"] = "Nenhuma configuração salva."

ns.L = L
