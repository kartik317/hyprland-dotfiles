#!/bin/bash

cd "$HOME/Pictures/Wallpapers" || exit

yazi --chooser-file /tmp/wallpaper.txt

if [ -f /tmp/wallpaper.txt ]; then
    wallpaper=$(realpath "$(cat /tmp/wallpaper.txt)")

    pkill -x mpvpaper 2>/dev/null

    awww img "$wallpaper" \
    --transition-type wave \
    --transition-angle 180 \
    --transition-wave 80,40 \
    --transition-duration 2.5 \
    --transition-fps 60 \
    --transition-bezier 0.65,0.05,0.36,1

    wallust run "$wallpaper"
    pkill -SIGUSR2 waybar

    echo "$wallpaper" > ~/.cache/current_wallpaper
    echo "image" > ~/.cache/current_wallpaper_type
    cp "$wallpaper" ~/.cache/wallpaper_frame.png # saves it for hyprlock

    rm /tmp/wallpaper.txt
fi
