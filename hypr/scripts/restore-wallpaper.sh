#!/bin/bash

wallpaper=$(cat ~/.cache/current_wallpaper 2>/dev/null)
type=$(cat ~/.cache/current_wallpaper_type 2>/dev/null)

[ -z "$wallpaper" ] && exit

if [[ "$type" == "video" ]]; then

    awww img "$HOME/Pictures/black.png" \
        --transition-type grow \
        --transition-duration 0.8

    pkill -x hyprpaper 2>/dev/null
    sleep 0.2

    hyprctl dispatch exec "mpvpaper -o 'no-audio loop hwdec=auto vo=gpu --profile=fast' '*' '$wallpaper'"
else
    pkill -x mpvpaper 2>/dev/null

    awww img "$wallpaper" --transition-type none
fi
