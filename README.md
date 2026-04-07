# Hyprland Dotfiles 🚀

A comprehensive configuration setup for **Hyprland** - a dynamic tiling Wayland window manager. This dotfiles repository includes configurations for various system utilities, terminal emulators, media players, and UI components to create a cohesive desktop environment.

## 📁 Directory Structure

### Core Components

#### `hypr/` - Hyprland Window Manager
Main Hyprland configuration files and scripts.
- **`hyprland.conf`** - Primary Hyprland configuration (keybindings, workspaces, appearance)
- **`hyprlock.conf`** - Login/lock screen configuration
- **`hyprpaper.conf`** - Wallpaper configuration
- **`scripts/`** - Utility scripts
  - `toggle-glava.sh` - Toggle GLava (audio visualizer) on/off
  - `wallpaper-yazi.sh` - Wallpaper selection via Yazi file manager

#### `hyprpaper/` - Hyprpaper Configuration
Dedicated wallpaper daemon configuration.
- **`hyprpaper.conf`** - Wallpaper settings and paths

#### `wallpapers/` - Local Wallpapers
Directory for active wallpaper files.
- `hyprlockMain.png` - Lock screen wallpaper
- `hyprMain.jpg` - Main desktop wallpaper

#### `All_Wallpapers/` - Wallpaper Collection
Comprehensive wallpaper library organized by theme.
- **`one_piece/`** - One Piece anime wallpapers

---

### Terminal & Shell

#### `kitty/` - Kitty Terminal Emulator
- **`kitty.conf`** - Terminal settings, fonts, keybindings
- **`colors.conf`** - Color scheme configuration
- **`colors-kitty.conf`** - Kitty-specific color overrides

---

### Media Management

#### `mpd/` - Music Player Daemon
Audio server configuration.
- **`mpd.conf`** - MPD database, connection, and plugin settings

#### `ncmpcpp/` - Music Player Client
Terminal-based music player client configuration.
- **`config`** - UI layout, keybindings, visualizer settings
- **`error.log`** - Client error log

---

### UI & Status Bar

#### `waybar/` - Status Bar
- **`config.jsonc`** - Modules (clock, network, volume, battery, etc.)
- **`mocha.css`** - Catppuccin Mocha theme styling
- **`style.css`** - Custom styling and layout

#### `wlogout/` - Logout Menu
Graphical logout/pow## 🐛 Troubleshooting

### Wallust not generating colors
```bash
wallust run -p ~/.config/wallust/wallust.toml <image>
```

### Waybar not updating
```bash
pkill waybar && waybar &
```

### Kitty colors not changing
Restart Kitty or reload with `kill -SIGUSR1 <kitty_pid>`.

### Scripts not executable
```bash
chmod +x hypr/scripts/*.sh
```
er menu.
- **`layout`** - Menu button layout and icons
- **`style.css`** - Logout menu styling

#### `rofi/` - Application & Window Switcher
Fast application launcher and window switcher.
- **`config.rasi`** - Main Rofi configuration (theme, keybindings, appearance)

---

### Color & Theme Management

#### `wallust/` - Wallpaper-based Colorscheme Generation
Dynamic color palette generation from wallpapers using Wallust.
- **`wallust.toml`** - Wallust configuration
- **`post-process.sh`** - Post-processing script for color generation
- **`templates/`** - Template files for generating configs with color schemes
  - `hyprland` - Hyprland color template
  - `kitty` - Kitty color template
  - `rofi-window.rasi` - Rofi window switcher template
  - `waybar` - Waybar color template
- **`colors-kitty.conf`** - Generated Kitty colors
- **`hyprland.conf`** - Generated Hyprland colors
- **`rofi-window.rasi`** - Generated Rofi configuration

---

### System Information

#### `fastfetch/` - System Information Display
Fast system info fetcher (like neofetch but faster).
- **`config.jsonc`** - Main fastfetch configuration
- **`config_zerotwo.jsonc`** - Zero Two theme variant
- **`config_zerotwo1.jsonc`** - Alternative Zero Two variant
- **`assets/`** - ASCII art and images
  - `ascii.txt` - Custom ASCII art
  - `zerotwo.png`, `zerotwo2.png` - Theme images

---

## 🚀 Quick Start

### Prerequisites
Ensure you have installed:
- **Hyprland** - Window manager
- **Hyprlock** - Lock screen
- **Hyprpaper** - Wallpaper daemon
- **Kitty** - Terminal emulator
- **Waybar** - Status bar
- **rofi** - application launcher
- **wlogout** - Logout menu
- **MPD** - Music Player Daemon
- **Ncmpcpp** - MPD client
- **Wallust** - Colorscheme generator
- **Fastfetch** - System info tool
- **Yazi** - TUI file manager (for wallpaper script)

### Installation

#### Clone the repository:
```bash
git clone https://github.com/kartik317/hyprland-dotfiles ~/.config/hypr-dotfiles
cd ~/.config/hypr-dotfiles
```

#### Symlink configurations:
```bash
# Hyprland
ln -sf ~/.config/hypr-dotfiles/hypr ~/.config/hypr

# Kitty
ln -sf ~/.config/hypr-dotfiles/kitty ~/.config/kitty

# Waybar
ln -sf ~/.config/hypr-dotfiles/waybar ~/.config/waybar

# Wlogout
ln -sf ~/.config/hypr-dotfiles/wlogout ~/.config/wlogout

# Rofi
ln -sf ~/.config/hypr-dotfiles/rofi ~/.config/rofi

# Music
ln -sf ~/.config/hypr-dotfiles/mpd ~/.config/mpd
ln -sf ~/.config/hypr-dotfiles/ncmpcpp ~/.config/ncmpcpp

# Wallust
ln -sf ~/.config/hypr-dotfiles/wallust ~/.config/wallust

# Fastfetch
ln -sf ~/.config/hypr-dotfiles/fastfetch ~/.config/fastfetch
```
Note: put all the wallpapers from `All_Wallpapers` to Picture/Wallpapers to match the path in `hypr/scripts/wallpaper-yazi.sh`

## 🔧 Key Features

✅ **Dynamic Wallpaper & Color Sync** - Wallust auto-generates themes from wallpapers  
✅ **Modern Wayland Setup** - Optimized for Hyprland  
✅ **Modular Structure** - Easy to customize each component  
✅ **Music Integration** - MPD + Ncmpcpp for audio management  
✅ **Fast System Info** - Fastfetch with anime themes  
✅ **Status Bar** - Full-featured Waybar configuration  
✅ **Utility Scripts** - Shell scripts for common tasks  

---

## 📝 Customization

### Modify Keybindings
Edit `hypr/hyprland.conf` for Hyprland shortcuts.

### Change Terminal Style
Adjust `kitty/kitty.conf` and `kitty/colors.conf`.

### Custom Waybar Modules
Edit `waybar/config.jsonc` and `waybar/style.css`.

### Add New Wallpapers
Place images in `All_Wallpapers/` and run Wallust to regenerate colors.

---

## 📚 Resources

- [Hyprland Wiki](https://wiki.hyprland.org)
- [Waybar Documentation](https://github.com/Alexays/Waybar)
- [Wallust Repository](https://github.com/colorgen/wallust)
- [Kitty Documentation](https://sw.kovidgoyal.net/kitty/)
- [MPD & Ncmpcpp Setup](https://wiki.archlinux.org/title/Music_Player_Daemon)

---

## 📄 License

Feel free to use, modify, and distribute these dotfiles.

---

**Happy ricing!** 🎨✨
