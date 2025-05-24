# HorizonToolkit for Drive Beyond Horizons

A comprehensive modding toolkit that adds multiple gameplay enhancements including painting tools, weapons, player abilities, and item spawning.

<img src="screenshot.gif" alt="Screenshot" width="600">

## Features

### 4 Distinct Modes
- **Paint Mode**: Spawn paint cans, rust brushes, and polish sponges with extensive color options
- **Weapon Mode**: Spawn weapons with infinite ammo
- **Player Mode**: Enhanced movement abilities including speed and jump boosts
- **Item Mode**: Spawn consumable items

### Paint System
- Near infinite paint usage
- Extensive color palette including basic colors, F1 racing team colors, and vintage military colors
- Toggle between matte and metallic sheen
- Infinite rust brush and polish sponge tools

### Weapon System
- AK weapon with infinite ammo
- Bazooka launcher

### Player Enhancements
- Configurable speed boost with ultra-fast movement
- Enhanced jump abilities
- Real-time toggle system

### Item Spawning
- Canned food
- Soda cans

## Usage

### Controls

#### Mode Navigation
- `F4`: Cycle between modes (Paint → Weapon → Player → Item)

#### Paint Mode
- `F5`: Spawn paint can
- `F6`: Spawn rust brush  
- `F7`: Spawn polish sponge
- `[` (Left Bracket): Cycle to previous color
- `]` (Right Bracket): Cycle to next color
- `\` (Backslash): Toggle between matte and metallic sheen

#### Weapon Mode
- `F5`: Spawn AK weapon
- `F6`: Spawn Bazooka

#### Player Mode
- `F5`: Toggle speed boost
- `F6`: Toggle jump boost

#### Item Mode
- `F5`: Spawn canned food
- `F6`: Spawn soda can

### Available Colors

The mod includes an extensive color palette:
- **Basic Colors**: Blue, Red, Green, Yellow, Orange, Purple, Pink, Black, White, Gold, Silver, Cyan
- **F1 Racing Team Colors**: All major F1 team livery colors including Ferrari, Red Bull, Mercedes, etc.
- **Vintage Military Colors**: Historical military paint schemes from various nations

### Available Sheens

- Matte
- Metallic

## Tutorial Video

[![How to Install UE4SS + Mod | Drive Beyond Horizons](https://img.youtube.com/vi/pWbKwe9b0e0/0.jpg)](https://www.youtube.com/watch?v=pWbKwe9b0e0)

## Installation Guide

Note: If you're installing an updated version of this mod, just overwrite the existing files.

### 1. Install UE4SS
- Download the **experimental-latest** zDEV version of UE4SS from [GitHub](https://github.com/UE4SS-RE/RE-UE4SS/releases/tag/experimental-latest)
- Place the `ue4ss` folder and `dwmapi.dll` in:  
  `Drive Beyond Horizons\DriveBeyondHorizons\Binaries\Win64`

### 2. Install the Mod
- Download the HorizonToolkit mod
- Place the `HorizonToolkit` folder in:  
  `Drive Beyond Horizons\DriveBeyondHorizons\Binaries\Win64\ue4ss\Mods\`

### 3. Mod Configuration (Optional)
The mod comes pre-enabled with an `enabled.txt` file. No additional setup is required.

If you prefer to manage mods through configuration files, you can:
- Delete the `enabled.txt` file and add the mod to your configuration:
```
mods.txt:
HorizonToolkit : 1

mods.json:
{
  "HorizonToolkit": true
}
```

## Configuration

The mod includes configurable settings in the script:
- Ground spawn offset and clearance
- Infinite quantities for tools and ammo
- Speed and jump multipliers
- Chat message display toggle

## Multiplayer

Note: This mod works best in single player.

- All players should have the mod installed
- Host-spawned items have priority
- Host can spawn items for friends to use
- Some features may not sync properly between players

## Known Issues

- Placing spawned items into hotbar slots may override mod properties. Simply spawn new items to restore functionality.
- The game may crash when exiting via in-game menu after using mod features. This is cosmetic and doesn't affect save data.
- Speed boost effects may persist briefly after disabling

## Troubleshooting

If you encounter issues:

1. Check the UE4SS console for error messages (requires zDEV-UE4SS install)
2. Make sure the mod is properly installed and enabled (either with enabled.txt or in mods.txt/mods.json)
3. If items spawn in weird positions:
   - Make sure you're standing on relatively flat ground. Gas Stations and Repair Shops have the best flat ground.
4. If speed boosts don't work properly, try toggling them off and on again

## Features Overview

### Paint Mode Features
- ✅ Extensive color palette with 50+ colors
- ✅ Matte and metallic sheen options
- ✅ Infinite paint quantity
- ✅ Rust removal and polishing tools

### Weapon Mode Features  
- ✅ AK weapon with infinite ammo
- ✅ Bazooka launcher
- ✅ Instant spawn system

### Player Mode Features
- ✅ Configurable speed multipliers
- ✅ Enhanced jump abilities
- ✅ Real-time toggle system
- ✅ Movement enhancement compatibility

### Item Mode Features
- ✅ Food and drink spawning
- ✅ Instant availability

## Credits

Special thanks to the UE4SS and Drive Beyond Horizons community for making modding possible.

## License
HorizonToolkit © 2025 is licensed under [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nd/4.0/)

