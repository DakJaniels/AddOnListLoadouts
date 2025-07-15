if GetLocale() ~= "zhTW" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR CHINESE TRADITIONAL (zhTW):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    CHINESE TRADITIONAL CONSIDERATIONS:
    - "Loadout" = "配置方案" (configuration scheme context)
    - Chinese text is typically more compact than English - but test carefully
    - Use Traditional Chinese characters (繁體) not Simplified (简体)
    - Consider proper Chinese punctuation (，。！？)
    - Use appropriate Chinese technical/gaming terminology for Taiwan/HK
    - Apply Chinese sentence structure and grammar rules
    - Consider context for character selection (同義詞選擇)
    - Use Traditional Chinese conventions and terminology
    - Maintain consistency with WoW Taiwan localization style

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Ensure proper UTF-8 encoding for Chinese characters
    - Test character width and font rendering carefully
    - Consider Chinese number formatting conventions
    - Verify Traditional character forms are correct (not auto-converted)
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "儲存和恢復已啟用的插件集合"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "配置方案"
L["SAVE_CURRENT_LOADOUT"] = "儲存目前配置"
L["NO_LOADOUTS_SAVED"] = "沒有已儲存的配置"
L["LOAD"] = "載入"
L["OVERWRITE"] = "覆蓋"
L["DELETE"] = "刪除"
L["SAVE"] = "儲存"
L["CANCEL"] = "取消"
L["RELOAD"] = "重新載入"
L["LATER"] = "稍後"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "插件配置方案"
L["TOOLTIP_DESCRIPTION"] = "儲存和恢復已啟用的插件集合"
L["TOOLTIP_INSTRUCTIONS"] = "左鍵點擊：開啟配置選單"

-- Messages
L["LOADOUT_NOT_FOUND"] = "找不到配置方案 '%s'。"
L["LOADOUT_APPLIED_NO_CHANGES"] = "配置方案 '%s' 已套用（無需更改）。"
L["INVALID_LOADOUT_NAME"] = "無效的配置方案名稱。"
L["LOADOUT_SAVED"] = "配置方案 '%s' 已%s，包含 %d 個插件。"
L["LOADOUT_DELETED"] = "配置方案 '%s' 已刪除。"
L["ADDON_MISSING"] = "%s（缺失）"
L["ADDON_COUNT_SINGLE"] = "%d 個插件："
L["ADDON_COUNT_PLURAL"] = "%d 個插件："
L["MORE_ADDONS"] = "... 還有 %d 個"
L["DATABASE_INITIALIZED"] = "資料庫已初始化。%d 個配置方案可用。"
L["ADDON_LOADED"] = "v%s 已載入。正在增強插件清單..."
L["BUTTON_ADDED"] = "配置方案按鈕已新增至插件清單。"
L["ADDON_LIST_NOT_FOUND"] = "未找到 AddonList 框架！"
L["DEBUG_MODE"] = "除錯模式已啟用。輸入 %s 檢視指令。"

-- Action Text
L["ACTION_UPDATED"] = "更新"
L["ACTION_SAVED"] = "儲存"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "配置方案 '%s' 已套用。重新載入介面以檢視更改？"
L["POPUP_SAVE_TEXT"] = "輸入新配置方案的名稱："
L["POPUP_OVERWRITE_TEXT"] = "用目前插件設定覆蓋配置方案 '%s'？"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "指令："
L["SLASH_SAVE_HELP"] = "/all save <名稱> - 將目前插件狀態儲存為配置方案"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <名稱> - 用目前設定覆蓋現有配置方案"
L["SLASH_LOAD_HELP"] = "/all load <名稱> - 載入已儲存的配置方案"
L["SLASH_LIST_HELP"] = "/all list - 列出所有已儲存的配置方案"
L["SLASH_DELETE_HELP"] = "/all delete <名稱> - 刪除配置方案"
L["SLASH_GUI_HELP"] = "或使用插件清單視窗中的配置方案按鈕"

-- Slash Command Usage
L["USAGE_SAVE"] = "用法：/all save <配置方案名稱>"
L["USAGE_OVERWRITE"] = "用法：/all overwrite <配置方案名稱>"
L["USAGE_LOAD"] = "用法：/all load <配置方案名稱>"
L["USAGE_DELETE"] = "用法：/all delete <配置方案名稱>"
L["LOADOUT_DOESNT_EXIST"] = "配置方案 '%s' 不存在。使用 'save' 來建立它。"

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "已儲存的配置方案："
L["LOADOUT_INFO"] = "  %s（%d 個插件，建立於 %s%s）"
L["MODIFIED_TEXT"] = "，修改於 %s"
L["NO_LOADOUTS"] = "沒有已儲存的配置方案。"

ns.L = L
