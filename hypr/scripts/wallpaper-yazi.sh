#!/bin/bash

cd "$HOME/Pictures/Wallpapers" || exit

yazi --chooser-file /tmp/wallpaper.txt

if [ -f /tmp/wallpaper.txt ]; then
    wallpaper=$(realpath "$(cat /tmp/wallpaper.txt)")

    awww img "$wallpaper" --transition-type grow --transition-duration 1.5

    # stop video wallpaper
    pkill -x mpvpaper 2>/dev/null

    wallust run "$wallpaper"
    pkill -SIGUSR2 waybar

    # save the current wallpaper to chache
    echo "$wallpaper" > ~/.cache/current_wallpaper
    echo "image" > ~/.cache/current_wallpaper_type

    rm /tmp/wallpaper.txt
fi
