# AddOnListLoadouts

**Save and restore sets of enabled addons using Blizzard's built-in AddOn List**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![WoW Version](https://img.shields.io/badge/WoW-11.0.7%20%7C%2011.0.2-blue.svg)](https://worldofwarcraft.com/)

## Overview

AddOnListLoadouts enhances World of Warcraft's native AddOn List interface by adding the ability to save and restore "loadouts" - preset configurations of enabled addons. Perfect for players who need different addon setups for raiding, PvP, leveling, or other gameplay scenarios.

## Features

### 🎯 **Core Functionality**
- **Save Current Loadout**: Capture your current addon configuration with a custom name
- **Load Loadouts**: Instantly switch between different addon configurations
- **Overwrite Existing**: Update saved loadouts with your current setup
- **Delete Loadouts**: Remove unwanted configurations

### 🖥️ **User Interface**
- **Seamless Integration**: Adds a "Loadouts" button directly to Blizzard's AddOn List
- **Context Menu**: Right-click style dropdown menu for easy access
- **Smart Tooltips**: Shows addon counts and helpful information
- **Reload Prompts**: Automatically asks if you want to reload UI after applying changes

### 💬 **Command Line Interface**
- **Slash Commands**: Full command line support with `/all` or `/addonlistloadouts`
- **Quick Actions**: Save, load, list, and delete loadouts from chat
- **Usage Help**: Built-in help system with command examples

### 🌍 **Localization Support**
- **13 Languages**: English, German, Spanish, French, Italian, Korean, Portuguese, Russian, Chinese (Traditional & Simplified), and more
- **Robust Fallback**: Gracefully handles missing translations
- **Debug Validation**: Developer tools for localization quality assurance

## Installation

### Option 1: Download from Repositories
- **CurseForge**: Coming soon
- **WoWInterface**: Coming soon
- **GitHub Releases**: Download the latest release and extract to your `AddOns` folder

### Option 2: Manual Installation
1. Download or clone this repository
2. Copy the `AddOnListLoadouts` folder to your WoW `Interface/AddOns/` directory
3. Restart World of Warcraft or type `/reload` in-game

## Usage

### GUI Method (Recommended)
1. Open the **AddOn List** (ESC → AddOns, or at character select)
2. Click the **"Loadouts"** button (added next to Enable/Disable All)
3. Use the dropdown menu to:
   - **Save Current Loadout**: Create a new loadout from your current setup
   - **Load existing loadouts**: Click any saved loadout name to apply it
   - **Manage loadouts**: Use Load/Overwrite/Delete options in submenus

### Command Line Method
```
/all save <name>           - Save current addon state as a loadout
/all load <name>           - Load a saved loadout
/all overwrite <name>      - Update existing loadout with current setup
/all list                  - Show all saved loadouts
/all delete <name>         - Delete a loadout
/all                       - Show help with all commands
```

### Examples
```
/all save "Raid Setup"
/all load "PvP Config"
/all list
/all delete "Old Loadout"
```

## Supported Locales

The addon is fully localized for the following languages:
- **English** (enUS, enGB)
- **German** (deDE) 
- **Spanish** (esES, esMX)
- **French** (frFR)
- **Italian** (itIT)
- **Korean** (koKR)
- **Portuguese** (ptBR, ptPT)
- **Russian** (ruRU)
- **Chinese Simplified** (zhCN)
- **Chinese Traditional** (zhTW)

## Technical Details

### Compatibility
- **WoW Version**: 11.0.7 (The War Within) and 11.0.2
- **Dependencies**: None (uses Blizzard's built-in AddOn List)
- **Load Timing**: Automatically loads with `Blizzard_AddOnList`

### Data Storage
- **Saved Variables**: `AddOnListLoadoutsDB`
- **Account Wide**: Loadouts are saved account wide!
- **Backup Friendly**: Standard WoW saved variables format

### Performance
- **Minimal Impact**: Only loads when AddOn List is opened
- **Memory Efficient**: Lazy loading and optimized data structures
- **No Background Processing**: Completely inactive during gameplay

## Development

### Project Structure
```
AddOnListLoadouts/
├── AddOnListLoadouts.lua       # Main addon logic
├── AddOnListLoadouts.toc       # Addon metadata
├── l10n/                       # Localization files
│   ├── enUS.lua               # English (base)
│   ├── deDE.lua               # German
│   ├── frFR.lua               # French
│   └── ...                    # Other languages
├── l10n.xml                   # Localization loader
└── README.md                  # This file
```

### Contributing

We welcome contributions! Here's how you can help:

#### 🐛 **Bug Reports**
- Use the [GitHub Issues](https://github.com/DakJaniels/AddOnListLoadouts/issues) page
- Include your WoW version, addon version, and steps to reproduce
- Provide error messages if available

#### 🌍 **Translations**
- Check `l10n/enUS.lua` for the complete list of strings
- Copy the English file and translate the values (not the keys)
- Test your translations in-game before submitting
- See [LOCALIZATION_IMPROVEMENTS.md](LOCALIZATION_IMPROVEMENTS.md) for translator guidelines

#### 💻 **Code Contributions**
- Fork the repository
- Create a feature branch
- Follow the existing code style
- Test thoroughly before submitting PR
- Update documentation if needed

### Development Setup
1. Clone the repository to your WoW AddOns folder
2. Enable script errors: `/console scriptErrors 1`
3. Use the localization validation features for debugging
4. Follow the code style defined in `.editorconfig`

## Changelog

### Version 1.0
- Initial release
- Core save/load functionality
- GUI integration with AddOn List
- Slash command support
- Full localization for 13 languages
- Robust error handling and validation

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Links

- **GitHub**: https://github.com/DakJaniels/AddOnListLoadouts
- **Issues**: https://github.com/DakJaniels/AddOnListLoadouts/issues
- **WoW AddOn Guidelines**: [Blizzard UI Policy](https://us.battle.net/support/en/article/000024940)

## Credits

- **Author**: Dack (Cullen Daugherty)
- **Inspiration**: Built to enhance Blizzard's native AddOn List
- **Community**: Thanks to all translators and contributors

---

*"Finally, a simple way to manage addon configurations without third-party managers!"*

## Support

If you encounter any issues or have questions:
1. Check the [Issues](https://github.com/DakJaniels/AddOnListLoadouts/issues) page for known problems
2. Enable debug mode (`/console scriptErrors 1`) for detailed error information
3. Create a new issue with detailed information about your problem

**Made with ❤️ for the World of Warcraft community**