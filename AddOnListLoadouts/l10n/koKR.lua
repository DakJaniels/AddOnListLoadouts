if GetLocale() ~= "koKR" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR KOREAN (koKR):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    KOREAN-SPECIFIC CONSIDERATIONS:
    - "Loadout" = "구성" (configuration/setup context)
    - Use appropriate honorific level for consistency with WoW Korean localization
    - Korean text often more compact than English - but test layout carefully
    - Use proper Korean spacing rules between words and particles
    - Consider Hangul character composition and readability
    - Use appropriate Korean terminology for gaming/technical terms
    - Apply Korean punctuation rules (。 for periods, etc.)
    - Use proper Korean sentence structure (SOV word order)
    - Consider formal/informal speech levels (존댓말/반말)

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Ensure proper UTF-8 encoding for Hangul characters
    - Test button layout as Korean can have different width requirements
    - Consider Korean number formatting conventions
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "활성화된 애드온 세트 저장 및 복원"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "구성"
L["SAVE_CURRENT_LOADOUT"] = "현재 구성 저장"
L["NO_LOADOUTS_SAVED"] = "저장된 구성 없음"
L["LOAD"] = "불러오기"
L["OVERWRITE"] = "덮어쓰기"
L["DELETE"] = "삭제"
L["SAVE"] = "저장"
L["CANCEL"] = "취소"
L["RELOAD"] = "재시작"
L["LATER"] = "나중에"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "애드온 구성"
L["TOOLTIP_DESCRIPTION"] = "활성화된 애드온 세트 저장 및 복원"
L["TOOLTIP_INSTRUCTIONS"] = "좌클릭: 구성 메뉴 열기"

-- Messages
L["LOADOUT_NOT_FOUND"] = "구성 '%s'을(를) 찾을 수 없습니다."
L["LOADOUT_APPLIED_NO_CHANGES"] = "구성 '%s' 적용됨 (변경사항 없음)."
L["INVALID_LOADOUT_NAME"] = "잘못된 구성 이름입니다."
L["LOADOUT_SAVED"] = "구성 '%s'이(가) %d개 애드온으로 %s되었습니다."
L["LOADOUT_DELETED"] = "구성 '%s'이(가) 삭제되었습니다."
L["ADDON_MISSING"] = "%s (없음)"
L["ADDON_COUNT_SINGLE"] = "%d개 애드온:"
L["ADDON_COUNT_PLURAL"] = "%d개 애드온:"
L["MORE_ADDONS"] = "... 그 외 %d개"
L["DATABASE_INITIALIZED"] = "데이터베이스 초기화됨. %d개 구성 사용 가능."
L["ADDON_LOADED"] = "v%s 로드됨. 애드온 목록 향상 중..."
L["BUTTON_ADDED"] = "구성 버튼이 애드온 목록에 추가되었습니다."
L["ADDON_LIST_NOT_FOUND"] = "AddonList 프레임을 찾을 수 없습니다!"
L["DEBUG_MODE"] = "디버그 모드 활성화됨. 명령어는 %s를 입력하세요."

-- Action Text
L["ACTION_UPDATED"] = "업데이트"
L["ACTION_SAVED"] = "저장"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "구성 '%s'이(가) 적용되었습니다. 변경사항을 보려면 UI를 재시작하시겠습니까?"
L["POPUP_SAVE_TEXT"] = "새 구성의 이름을 입력하세요:"
L["POPUP_OVERWRITE_TEXT"] = "구성 '%s'을(를) 현재 애드온 설정으로 덮어쓰시겠습니까?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "명령어:"
L["SLASH_SAVE_HELP"] = "/all save <이름> - 현재 애드온 상태를 구성으로 저장"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <이름> - 기존 구성을 현재 설정으로 덮어쓰기"
L["SLASH_LOAD_HELP"] = "/all load <이름> - 저장된 구성 불러오기"
L["SLASH_LIST_HELP"] = "/all list - 모든 저장된 구성 목록 보기"
L["SLASH_DELETE_HELP"] = "/all delete <이름> - 구성 삭제"
L["SLASH_GUI_HELP"] = "또는 애드온 목록 창의 구성 버튼을 사용하세요"

-- Slash Command Usage
L["USAGE_SAVE"] = "사용법: /all save <구성 이름>"
L["USAGE_OVERWRITE"] = "사용법: /all overwrite <구성 이름>"
L["USAGE_LOAD"] = "사용법: /all load <구성 이름>"
L["USAGE_DELETE"] = "사용법: /all delete <구성 이름>"
L["LOADOUT_DOESNT_EXIST"] = "구성 '%s'이(가) 존재하지 않습니다. 'save'를 사용해서 생성하세요."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "저장된 구성:"
L["LOADOUT_INFO"] = "  %s (%d개 애드온, 생성일 %s%s)"
L["MODIFIED_TEXT"] = ", 수정일 %s"
L["NO_LOADOUTS"] = "저장된 구성이 없습니다."

ns.L = L
