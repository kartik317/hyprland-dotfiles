-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function () 
hl.exec_cmd("qs & hyprpaper")
hl.exec_cmd("swaync & hypridle")
hl.exec_cmd("nm-applet")
hl.exec_cmd("awww-daemon")
hl.exec_cmd("copyq")
hl.exec_cmd("mpd-mpris")
hl.exec_cmd("kanshi")
hl.exec_cmd("undiskie")
hl.exec_cmd("~/.config/hypr/scripts/restore-wallpaper.sh")
end)
