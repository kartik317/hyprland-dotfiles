#!/bin/bash

cd "$HOME/Pictures/Wallpapers" || exit

yazi --chooser-file /tmp/wallpaper.txt

if [ -f /tmp/wallpaper.txt ]; then
    wallpaper=$(cat /tmp/wallpaper.txt)

    awww img "$wallpaper" --transition-type grow --transition-duration 0.8
    #wallust run "$wallpaper"
    ~/.config/wallust/post-process.sh "$wallpaper"
    pkill -SIGUSR2 waybar

    rm /tmp/wallpaper.txt
fi

