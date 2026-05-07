# Hyprland Dotfiles

<iframe width="560" height="315" src="https://youtu.be/8hfpRXW6VIE?si=MwkpPekX7qP4oQfx" frameborder="0" allowfullscreen></iframe>   

## 📁 Directory Structure

### Core Components

#### `hypr/` - Hyprland Window Manager
Main Hyprland configuration files and scripts.
- **`hyprland.conf`** - Primary Hyprland configuration
- **`modules/`** conf for hyprland
  - `animations.conf` - Hyprland animation
  - `autostart.conf` - exec-once
  - `keybinds.conf` - All the hyprland keybind
  - `windowrules.conf` - All hyprland window rules
- **`hyprlock.conf`** - Login/lock screen configuration
- **`hyprpaper.conf`** - Wallpaper configuration
- **`scripts/`** - Utility scripts
  - `toggle-glava.sh` - Toggle GLava (audio visualizer) on/off
  - `wallpaper-yazi.sh` - Wallpaper selection via Yazi file manager
  - `live-wallpaper-yazi.sh` - Live wallpaper selection via Yazi
  - `restore-wallpaper.sh` - Restore wallpaper from chache on re-boot
  - `toggle-cava-bg.sh` Toggle CavaBG (audio visualizer in background) on/off

#### `hyprpaper/` - Hyprpaper Configuration
Dedicated wallpaper daemon configuration.
- **`hyprpaper.conf`** - Wallpaper settings and paths

#### `wallpapers/` - Local Wallpapers
Directory for active wallpaper files.
- `hyprlockMain.png` - Lock screen wallpaper
- `hyprMain.jpg` - Main desktop wallpaper

#### `All_Wallpapers/` - Wallpaper Collection
- **`one_piece/`** - One Piece anime wallpapers

### `LiveWallpapers/` - Live wallapper collection

---

### Terminal & Shell

#### `kitty/` - Kitty Terminal Emulator
- **`kitty.conf`** - Terminal settings, fonts, keybindings
- **`colors.conf`** - Color scheme configuration
- **`colors-kitty.conf`** - Kitty-specific color overrides

#### `nvim/` - Neovim Text Editor
Modern Neovim configuration with LSP, completion, and plugin management.
- **`init.lua`** - Main Neovim entry point and initialization
- **`lazy-lock.json`** - Locked versions of lazy.nvim plugins
- **`lua/`** - Lua configuration modules
  - `vim-options.lua` - Core Vim settings and options
  - `config/` - Plugin configurations
    - `lazy.lua` - Lazy.nvim plugin manager setup
    - `lsp.lua` - Language Server Protocol configuration
    - `mason.lua` - LSP installer and manager
    - `mason-lspconfig.lua` - Mason LSP configuration bridge
    - `mason-tools.lua` - DAP and tool installations
    - `cmp.lua` - Completion engine configuration
    - `telescope.lua` - Fuzzy finder setup
    - `treesitter.lua` - Syntax highlighting and parsing
    - `neotree.lua` - File explorer configuration
    - `lualine.lua` - Status line configuration
    - `keymaps.lua` - Custom key bindings
    - `none-ls.lua` - Null-ls (formatting and diagnostics)
  - `plugins/` - Plugin specifications
    - `init.lua` - Plugin list and specifications

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
Graphical logout/power menu.
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
Fast system info fetcher (like neovisfetch but faster).
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
- **MPVpaper** - Live wallpaper
- **Kitty** - Terminal emulator
- **neovim** - Text editor
- **Waybar** - Status bar
- **rofi** - application launcher
- **wlogout** - Logout menu
- **MPD** - Music Player Daemon
- **Ncmpcpp** - MPD client
- **Wallust** - Colorscheme generator
- **Fastfetch** - System info tool
- **Yazi** - TUI file manager (for wallpaper script)
- **cava** Audio visualizer
- **cava-bg** Audio visualizer in background


### Installation

#### Clone the repository:
```bash
git clone https://github.com/kartik317/hyprland-dotfiles ~/.config/hypr-dotfiles
cd ~/.config/hypr-dotfiles
```

#### Symlink configurations:
```bash
# Hyprland
ln -sf ~/.config/hyprland-dotfiles/hypr ~/.config/hypr

# Kitty
ln -sf ~/.config/hyprland-dotfiles/kitty ~/.config/kitty

#neovim
ln -sf ~/.config/hyprland-dotfiles/nvim ~/.config/nvim

# Waybar
ln -sf ~/.config/hyprland-dotfiles/waybar ~/.config/waybar

# Wlogout
ln -sf ~/.config/hyprland-dotfiles/wlogout ~/.config/wlogout

# Rofi
ln -sf ~/.config/hyprland-dotfiles/rofi ~/.config/rofi

# Music
ln -sf ~/.config/hyprland-dotfiles/mpd ~/.config/mpd
ln -sf ~/.config/hyprland-dotfiles/ncmpcpp ~/.config/ncmpcpp

# Wallust
ln -sf ~/.config/hyprland-dotfiles/wallust ~/.config/wallust

# Fastfetch
ln -sf ~/.config/hyprland-dotfiles/fastfetch ~/.config/fastfetch
```
Note: put all the wallpapers from `All_Wallpapers` to `Picture/Wallpapers` to match the path in `hypr/scripts/wallpaper-yazi.sh`
      for live wallpaper put your wallpapers in `Video/LiveWallpapers` to match the path in `hypr/script/live-wallpaper-yazi.sh` (repo doesn't include live wallpaper because of there file size)

## 🔧 Key Features

✅ **Dynamic Wallpaper & Color Sync** - Wallust auto-generates themes from wallpapers 
✅ **Dynamic Live Wallpaper & Color Sync** - Wallust auto-generates themes from first frame of wallpapers   
✅ **Modular Structure** - Easy to customize each component  
✅ **Music Integration** - MPD + Ncmpcpp for audio management  
✅ **Fast System Info** - Fastfetch with ascii art  
✅ **Status Bar** - Full-featured Waybar configuration  
✅ **Utility Scripts** - Shell scripts for common tasks  

---

## 📝 Customization

### Modify Keybindings
Edit `hypr/modules/keybinds.conf` for Hyprland shortcuts.

### Change Terminal Style
Adjust `kitty/kitty.conf` and `kitty/colors.conf`.

### Custom Waybar Modules
Edit `waybar/config.jsonc` and `waybar/style.css`.


---

## 📚 Resources

- [Hyprland Wiki](https://wiki.hyprland.org)
- [Waybar Documentation](https://github.com/Alexays/Waybar)
- [Wallust Repository](https://github.com/colorgen/wallust)
- [Kitty Documentation](https://sw.kovidgoyal.net/kitty/)
- [Neovim](https://neovim.io/)
- [MPD & Ncmpcpp Setup](https://wiki.archlinux.org/title/Music_Player_Daemon)
- [Yazi](https://yazi-rs.github.io/)
- [cava](https://github.com/karlstav/cava)
- [cava-bg](https://github.com/leriart/cava-bg)

---

## 📄 License

Feel free to use, modify, and distribute these dotfiles.

---

**Happy ricing!**
