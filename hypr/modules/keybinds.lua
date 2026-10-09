---------------------
---- KEYBINDINGS ----
---------------------

local terminal    = "kitty"
local fileManager = "thunar"
local menu        = "rofi -show drun"



local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd(terminal .. " --hold sh -c 'fastfetch'"))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("qs -p ~/Desktop/quickshell_configuration/quickshell/shell.qml ipc call wallpaper-switcher toggle"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("qs ipc call live-wallpaper-switcher toggle"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd(terminal .. " -e yazi"))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd("qs ipc call clipboard toggle"))
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("qs ipc call lockscreen lock"))
--hl.bind(mainMod .. " + period", hl.dsp.exec_cmd("wofi-emoji | wofi-copy"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("brave"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("obsidian"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("kitty -e bluetui"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-cava-bg.sh"))
hl.bind("CTRL + M", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-glava.sh"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("kitty -e nmtui"))
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-quickshell.sh"))
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-waybar.sh"))
hl.bind(mainMod .. " + ALT + C", hl.dsp.exec_cmd("qs ipc call clock-widget toggle"))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("qs ipc call brightness-controls toggle"))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("qs ipc call powermenu toggle"))
hl.bind("ALT + C", hl.dsp.exec_cmd("hyprpicker"))
hl.bind("CTRL + SHIFT + W", hl.dsp.exec_cmd("kitty --class weather -e linecast weather"))
hl.bind("CTRL + SHIFT + M", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-cava-bg.sh"))

-- Music controls
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("qs ipc call media playPause"))
hl.bind(mainMod .. " + SHIFT + period", hl.dsp.exec_cmd("qs ipc call media next"))
hl.bind(mainMod .. " + SHIFT + comma", hl.dsp.exec_cmd("qs ipc call media previous"))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("qs ipc call media loop"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("qs ipc call media shuffle"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("qs ipc call media changePlayer"))

-- Apps shortcuts
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("qs ipc call appshortcuts off"))
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd("qs ipc call appshortcuts next"))
hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd("qs ipc call appshortcuts prev"))
hl.bind(mainMod .. " + return", hl.dsp.exec_cmd("qs ipc call appshortcuts launch"))


-- Voice assistant

-- key-down: start recording
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd("~/.config/hypr/assistant/start.sh"))
-- key-up: stop recording
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd("~/.config/hypr/assistant/stop.sh"), { release = true })


-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

