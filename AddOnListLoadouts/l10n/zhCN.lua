if GetLocale() ~= "zhCN" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR CHINESE SIMPLIFIED (zhCN):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    CHINESE SIMPLIFIED CONSIDERATIONS:
    - "Loadout" = "配置方案" (configuration scheme context)
    - Chinese text is typically more compact than English - but test carefully
    - Use Simplified Chinese characters (简体) not Traditional (繁体)
    - Consider proper Chinese punctuation (，。！？)
    - Use appropriate Chinese technical/gaming terminology
    - Apply Chinese sentence structure and grammar rules
    - Consider context for character selection (同义词选择)
    - Use modern Simplified Chinese conventions
    - Maintain consistency with WoW China localization style

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Ensure proper UTF-8 encoding for Chinese characters
    - Test character width and font rendering carefully
    - Consider Chinese number formatting conventions
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "保存和恢复已启用的插件集合"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "配置方案"
L["SAVE_CURRENT_LOADOUT"] = "保存当前配置"
L["NO_LOADOUTS_SAVED"] = "没有已保存的配置"
L["LOAD"] = "加载"
L["OVERWRITE"] = "覆盖"
L["DELETE"] = "删除"
L["SAVE"] = "保存"
L["CANCEL"] = "取消"
L["RELOAD"] = "重新加载"
L["LATER"] = "稍后"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "插件配置方案"
L["TOOLTIP_DESCRIPTION"] = "保存和恢复已启用的插件集合"
L["TOOLTIP_INSTRUCTIONS"] = "左键单击：打开配置菜单"

-- Messages
L["LOADOUT_NOT_FOUND"] = "找不到配置方案 '%s'。"
L["LOADOUT_APPLIED_NO_CHANGES"] = "配置方案 '%s' 已应用（无需更改）。"
L["INVALID_LOADOUT_NAME"] = "无效的配置方案名称。"
L["LOADOUT_SAVED"] = "配置方案 '%s' 已%s，包含 %d 个插件。"
L["LOADOUT_DELETED"] = "配置方案 '%s' 已删除。"
L["ADDON_MISSING"] = "%s（缺失）"
L["ADDON_COUNT_SINGLE"] = "%d 个插件："
L["ADDON_COUNT_PLURAL"] = "%d 个插件："
L["MORE_ADDONS"] = "... 还有 %d 个"
L["DATABASE_INITIALIZED"] = "数据库已初始化。%d 个配置方案可用。"
L["ADDON_LOADED"] = "v%s 已加载。正在增强插件列表..."
L["BUTTON_ADDED"] = "配置方案按钮已添加到插件列表。"
L["ADDON_LIST_NOT_FOUND"] = "未找到 AddonList 框架！"
L["DEBUG_MODE"] = "调试模式已启用。输入 %s 查看命令。"

-- Action Text
L["ACTION_UPDATED"] = "更新"
L["ACTION_SAVED"] = "保存"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "配置方案 '%s' 已应用。重新加载界面以查看更改？"
L["POPUP_SAVE_TEXT"] = "输入新配置方案的名称："
L["POPUP_OVERWRITE_TEXT"] = "用当前插件设置覆盖配置方案 '%s'？"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "命令："
L["SLASH_SAVE_HELP"] = "/all save <名称> - 将当前插件状态保存为配置方案"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <名称> - 用当前设置覆盖现有配置方案"
L["SLASH_LOAD_HELP"] = "/all load <名称> - 加载已保存的配置方案"
L["SLASH_LIST_HELP"] = "/all list - 列出所有已保存的配置方案"
L["SLASH_DELETE_HELP"] = "/all delete <名称> - 删除配置方案"
L["SLASH_GUI_HELP"] = "或使用插件列表窗口中的配置方案按钮"

-- Slash Command Usage
L["USAGE_SAVE"] = "用法：/all save <配置方案名称>"
L["USAGE_OVERWRITE"] = "用法：/all overwrite <配置方案名称>"
L["USAGE_LOAD"] = "用法：/all load <配置方案名称>"
L["USAGE_DELETE"] = "用法：/all delete <配置方案名称>"
L["LOADOUT_DOESNT_EXIST"] = "配置方案 '%s' 不存在。使用 'save' 来创建它。"

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "已保存的配置方案："
L["LOADOUT_INFO"] = "  %s（%d 个插件，创建于 %s%s）"
L["MODIFIED_TEXT"] = "，修改于 %s"
L["NO_LOADOUTS"] = "没有已保存的配置方案。"

ns.L = L
