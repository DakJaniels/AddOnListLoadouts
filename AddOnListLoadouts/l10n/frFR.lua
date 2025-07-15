if GetLocale() ~= "frFR" then
    return
end

---@class (partial) AddOnListLoadouts
local ns = select(2, ...)
local L = {}

--[[
    TRANSLATOR NOTES FOR FRENCH (frFR):

    GENERAL GUIDELINES:
    - Keep button text short (max 15 characters recommended for UI space)
    - %s = string placeholder, %d = number placeholder
    - Color codes like |cff00ff00 should NOT be translated
    - Preserve formatting placeholders (%s, %d, etc.) in the same order
    - Test with long addon names - some strings may need to accommodate them

    FRENCH-SPECIFIC CONSIDERATIONS:
    - "Loadout" = "Configuration" (f.) (setup/configuration context)
    - Use proper gender agreement (la configuration, l'addon)
    - French text typically 15-30% longer than English - test UI layout carefully
    - Use formal "vous" for consistency with WoW French localization
    - Consider accent marks and special characters (à, é, è, ç, ê, etc.)
    - Apply French capitalization rules (only first word capitalized in titles)
    - Use proper French punctuation spacing (space before : ; ! ?)
    - Maintain French syntax and word order

    TECHNICAL NOTES:
    - Preserve all format specifiers (%s, %d) in exact same order
    - Do not translate variable names or color codes
    - Test button text lengths as French can be significantly longer
    - Ensure proper encoding for accented characters
    - Consider elision rules (le/la → l' before vowels)
]]

L["ADDON_NAME"] = "AddOn List Loadouts"
L["ADDON_TITLE"] = "AddOn List Loadouts"
L["ADDON_DESCRIPTION"] = "Sauvegardez et restaurez des ensembles d'addons activés"

-- Button and UI Text
L["LOADOUTS_BUTTON"] = "Configurations"
L["SAVE_CURRENT_LOADOUT"] = "Sauvegarder la configuration actuelle"
L["NO_LOADOUTS_SAVED"] = "Aucune configuration sauvegardée"
L["LOAD"] = "Charger"
L["OVERWRITE"] = "Écraser"
L["DELETE"] = "Supprimer"
L["SAVE"] = "Sauvegarder"
L["CANCEL"] = "Annuler"
L["RELOAD"] = "Recharger"
L["LATER"] = "Plus tard"

-- Tooltip Text
L["TOOLTIP_TITLE"] = "Configurations d'AddOns"
L["TOOLTIP_DESCRIPTION"] = "Sauvegardez et restaurez des ensembles d'addons activés"
L["TOOLTIP_INSTRUCTIONS"] = "Clic gauche : Ouvrir le menu des configurations"

-- Messages
L["LOADOUT_NOT_FOUND"] = "Configuration '%s' introuvable."
L["LOADOUT_APPLIED_NO_CHANGES"] = "Configuration '%s' appliquée (aucun changement nécessaire)."
L["INVALID_LOADOUT_NAME"] = "Nom de configuration invalide."
L["LOADOUT_SAVED"] = "Configuration '%s' %s avec %d addons."
L["LOADOUT_DELETED"] = "Configuration '%s' supprimée."
L["ADDON_MISSING"] = "%s (manquant)"
L["ADDON_COUNT_SINGLE"] = "%d addon :"
L["ADDON_COUNT_PLURAL"] = "%d addons :"
L["MORE_ADDONS"] = "... et %d de plus"
L["DATABASE_INITIALIZED"] = "Base de données initialisée. %d configurations disponibles."
L["ADDON_LOADED"] = "v%s chargé. Amélioration de la liste d'AddOns..."
L["BUTTON_ADDED"] = "Bouton Configurations ajouté à la liste d'AddOns."
L["ADDON_LIST_NOT_FOUND"] = "Cadre AddonList introuvable !"
L["DEBUG_MODE"] = "Mode débogage activé. Tapez %s pour les commandes."

-- Action Text
L["ACTION_UPDATED"] = "mise à jour"
L["ACTION_SAVED"] = "sauvegardée"

-- Static Popup Text
L["POPUP_RELOAD_TEXT"] = "Configuration '%s' appliquée. Recharger l'interface pour voir les changements ?"
L["POPUP_SAVE_TEXT"] = "Entrez le nom de la nouvelle configuration :"
L["POPUP_OVERWRITE_TEXT"] = "Écraser la configuration '%s' avec la configuration actuelle des addons ?"

-- Slash Command Help
L["SLASH_COMMANDS_HEADER"] = "Commandes :"
L["SLASH_SAVE_HELP"] = "/all save <nom> - Sauvegarder l'état actuel des addons comme configuration"
L["SLASH_OVERWRITE_HELP"] = "/all overwrite <nom> - Écraser une configuration existante avec la configuration actuelle"
L["SLASH_LOAD_HELP"] = "/all load <nom> - Charger une configuration sauvegardée"
L["SLASH_LIST_HELP"] = "/all list - Lister toutes les configurations sauvegardées"
L["SLASH_DELETE_HELP"] = "/all delete <nom> - Supprimer une configuration"
L["SLASH_GUI_HELP"] = "Ou utilisez le bouton Configurations dans la fenêtre de liste d'AddOns"

-- Slash Command Usage
L["USAGE_SAVE"] = "Utilisation : /all save <nom de configuration>"
L["USAGE_OVERWRITE"] = "Utilisation : /all overwrite <nom de configuration>"
L["USAGE_LOAD"] = "Utilisation : /all load <nom de configuration>"
L["USAGE_DELETE"] = "Utilisation : /all delete <nom de configuration>"
L["LOADOUT_DOESNT_EXIST"] = "La configuration '%s' n'existe pas. Utilisez 'save' pour la créer."

-- List Command Output
L["SAVED_LOADOUTS_HEADER"] = "Configurations sauvegardées :"
L["LOADOUT_INFO"] = "  %s (%d addons, créée %s%s)"
L["MODIFIED_TEXT"] = ", modifiée %s"
L["NO_LOADOUTS"] = "Aucune configuration sauvegardée."

ns.L = L
