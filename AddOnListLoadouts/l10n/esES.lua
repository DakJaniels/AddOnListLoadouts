if GetLocale() ~= "esES" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR SPANISH - SPAIN (esES):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    SPANISH-SPECIFIC CONSIDERATIONS:
    - "Loadout" = "Configuración" (configuration/setup context)
    - Use proper gender agreement (la configuración, el addon)
    - Spanish text typically 15-25% longer than English - test UI layout
    - Use formal address (usted) for consistency with WoW Spain localization
    - Maintain Spanish punctuation: ¿question? ¡exclamation!
    - Use European Spanish terms vs Latin American variants
    - Consider accent marks and special characters (ñ, á, é, í, ó, ú)

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Test button text lengths as Spanish can be significantly longer
    - Ensure proper encoding for special characters
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Guarda y restaura conjuntos de addons habilitados"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "Configuraciones"
L["SAVE_CURRENT_LOADOUT"] = "Guardar configuración actual"
L["NO_LOADOUTS_SAVED"] = "No hay configuraciones guardadas"
L["LOAD"] = "Cargar"
L["OVERWRITE"] = "Sobrescribir"
L["DELETE"] = "Eliminar"
L["SAVE"] = "Guardar"
L["CANCEL"] = "Cancelar"
L["RELOAD"] = "Recargar"
L["LATER"] = "Más tarde"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "Configuraciones de AddOns"
L["TOOLTIP_DESCRIPTION"] = "Guarda y restaura conjuntos de addons habilitados"
L["TOOLTIP_INSTRUCTIONS"] = "Clic izquierdo: Abrir menú de configuraciones"

-- Messages
L["LOADOUT_NOT_FOUND"] = "Configuración '%s' no encontrada."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Configuración '%s' aplicada (no se necesitan cambios)."
L["INVALID_LOADOUT_NAME"] = "Nombre de configuración inválido."
L["LOADOUT_SAVED"] = "Configuración '%s' %s con %d addons."
L["LOADOUT_DELETED"] = "Configuración '%s' eliminada."
L["ADDON_MISSING"] = "%s (faltante)"
L["ADDON_COUNT_SINGLE"] = "%d addon:"
L["ADDON_COUNT_PLURAL"] = "%d addons:"
L["MORE_ADDONS"] = "... y %d más"
L["DATABASE_INITIALIZED"] = "Base de datos inicializada. %d configuraciones disponibles."
L["ADDON_LOADED"] = "v%s cargado. Mejorando lista de AddOns..."
L["BUTTON_ADDED"] = "Botón de Configuraciones añadido a la lista de AddOns."
L["ADDON_LIST_NOT_FOUND"] = "¡Marco AddonList no encontrado!"
L["DEBUG_MODE"] = "Modo de depuración habilitado. Escriba %s para comandos."

-- Action Text
L["ACTION_UPDATED"] = "actualizada"
L["ACTION_SAVED"] = "guardada"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "Configuración '%s' aplicada. ¿Recargar interfaz para ver los cambios?"
L["POPUP_SAVE_TEXT"] = "Ingrese nombre para nueva configuración:"
L["POPUP_OVERWRITE_TEXT"] = "¿Sobrescribir configuración '%s' con la configuración actual de addons?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "Comandos:"
L["SLASH_SAVE_HELP"] = "/all save <nombre> - Guardar estado actual de addons como configuración"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <nombre> - Sobrescribir configuración existente con configuración actual"
L["SLASH_LOAD_HELP"] = "/all load <nombre> - Cargar configuración guardada"
L["SLASH_LIST_HELP"] = "/all list - Listar todas las configuraciones guardadas"
L["SLASH_DELETE_HELP"] = "/all delete <nombre> - Eliminar configuración"
L["SLASH_GUI_HELP"] = "O use el botón Configuraciones en la ventana de lista de AddOns"

-- Slash Command Usage
L["USAGE_SAVE"] = "Uso: /all save <nombre de configuración>"
L["USAGE_OVERWRITE"] = "Uso: /all overwrite <nombre de configuración>"
L["USAGE_LOAD"] = "Uso: /all load <nombre de configuración>"
L["USAGE_DELETE"] = "Uso: /all delete <nombre de configuración>"
L["LOADOUT_DOESNT_EXIST"] = "La configuración '%s' no existe. Use 'save' para crearla."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "Configuraciones guardadas:"
L["LOADOUT_INFO"] = "  %s (%d addons, creada %s%s)"
L["MODIFIED_TEXT"] = ", modificada %s"
L["NO_LOADOUTS"] = "No hay configuraciones guardadas."

ns.L = L
