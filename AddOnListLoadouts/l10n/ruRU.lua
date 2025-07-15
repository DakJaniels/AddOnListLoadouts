if GetLocale() ~= "ruRU" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR RUSSIAN (ruRU):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    RUSSIAN-SPECIFIC CONSIDERATIONS:
    - "Loadout" = "Набор" (m.) (set/configuration context)
    - Use proper case declensions (номинатив, генитив, etc.)
    - Russian text can be 10-30% longer than English - test UI layout
    - Use appropriate formality level for consistency with WoW Russian localization
    - Consider Cyrillic character encoding and display
    - Apply Russian plural forms (1 набор, 2-4 набора, 5+ наборов)
    - Use proper Russian syntax and word order
    - Consider gender agreement for adjectives and nouns
    - Use appropriate Russian gaming/technical terminology

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Ensure proper UTF-8 encoding for Cyrillic characters
    - Test button text lengths as Russian can vary significantly in length
    - Consider Russian number formatting and declension rules
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Сохраняйте и восстанавливайте наборы включенных аддонов"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "Наборы"
L["SAVE_CURRENT_LOADOUT"] = "Сохранить текущий набор"
L["NO_LOADOUTS_SAVED"] = "Нет сохраненных наборов"
L["LOAD"] = "Загрузить"
L["OVERWRITE"] = "Перезаписать"
L["DELETE"] = "Удалить"
L["SAVE"] = "Сохранить"
L["CANCEL"] = "Отмена"
L["RELOAD"] = "Перезагрузить"
L["LATER"] = "Позже"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "Наборы аддонов"
L["TOOLTIP_DESCRIPTION"] = "Сохраняйте и восстанавливайте наборы включенных аддонов"
L["TOOLTIP_INSTRUCTIONS"] = "Левый клик: Открыть меню наборов"

-- Messages
L["LOADOUT_NOT_FOUND"] = "Набор '%s' не найден."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Набор '%s' применен (изменения не требуются)."
L["INVALID_LOADOUT_NAME"] = "Недопустимое имя набора."
L["LOADOUT_SAVED"] = "Набор '%s' %s с %d аддонами."
L["LOADOUT_DELETED"] = "Набор '%s' удален."
L["ADDON_MISSING"] = "%s (отсутствует)"
L["ADDON_COUNT_SINGLE"] = "%d аддон:"
L["ADDON_COUNT_PLURAL"] = "%d аддонов:"
L["MORE_ADDONS"] = "... и еще %d"
L["DATABASE_INITIALIZED"] = "База данных инициализирована. Доступно %d наборов."
L["ADDON_LOADED"] = "v%s загружен. Улучшение списка аддонов..."
L["BUTTON_ADDED"] = "Кнопка 'Наборы' добавлена в список аддонов."
L["ADDON_LIST_NOT_FOUND"] = "Фрейм AddonList не найден!"
L["DEBUG_MODE"] = "Режим отладки включен. Введите %s для команд."

-- Action Text
L["ACTION_UPDATED"] = "обновлен"
L["ACTION_SAVED"] = "сохранен"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "Набор '%s' применен. Перезагрузить интерфейс для отображения изменений?"
L["POPUP_SAVE_TEXT"] = "Введите имя для нового набора:"
L["POPUP_OVERWRITE_TEXT"] = "Перезаписать набор '%s' текущей конфигурацией аддонов?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "Команды:"
L["SLASH_SAVE_HELP"] = "/all save <имя> - Сохранить текущее состояние аддонов как набор"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <имя> - Перезаписать существующий набор текущей конфигурацией"
L["SLASH_LOAD_HELP"] = "/all load <имя> - Загрузить сохраненный набор"
L["SLASH_LIST_HELP"] = "/all list - Показать все сохраненные наборы"
L["SLASH_DELETE_HELP"] = "/all delete <имя> - Удалить набор"
L["SLASH_GUI_HELP"] = "Или используйте кнопку 'Наборы' в окне списка аддонов"

-- Slash Command Usage
L["USAGE_SAVE"] = "Использование: /all save <имя набора>"
L["USAGE_OVERWRITE"] = "Использование: /all overwrite <имя набора>"
L["USAGE_LOAD"] = "Использование: /all load <имя набора>"
L["USAGE_DELETE"] = "Использование: /all delete <имя набора>"
L["LOADOUT_DOESNT_EXIST"] = "Набор '%s' не существует. Используйте 'save' для создания."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "Сохраненные наборы:"
L["LOADOUT_INFO"] = "  %s (%d аддонов, создан %s%s)"
L["MODIFIED_TEXT"] = ", изменен %s"
L["NO_LOADOUTS"] = "Нет сохраненных наборов."

ns.L = L
