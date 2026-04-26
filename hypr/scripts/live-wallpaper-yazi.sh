#!/bin/bash

cd "$HOME/Videos/LiveWallpapers" || exit

yazi --chooser-file /tmp/wallpaper.txt

if [ -f /tmp/wallpaper.txt ]; then
    wallpaper=$(realpath "$(cat /tmp/wallpaper.txt)")

    ext="${wallpaper##*.}"
    ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    temp_img="/tmp/wallpaper_frame.png"

    # extract frame if video
    if [[ "$ext" == "mp4" || "$ext" == "webm" || "$ext" == "mkv" ]]; then
        ffmpeg -y -i "$wallpaper" -frames:v 1 "$temp_img" >/dev/null 2>&1
        awww img "$temp_img" --transition-type grow --transition-duration 0.8
    else
        # fallback (shouldn't happen here)
        awww img "$wallpaper" --transition-type grow --transition-duration 0.8
    fi

    # kill previous wallpaper engines
    pkill -x mpvpaper 2>/dev/null
    pkill -x hyprpaper 2>/dev/null

    sleep 0.2

    # start video wallpaper
    hyprctl dispatch exec "mpvpaper -o 'no-audio loop hwdec=auto vo=gpu --profile=fast' '*' '$wallpaper'"

    # generate colors from frame
    wallust run "$temp_img"

    # cleanup
    rm -f "$temp_img"

    echo "$wallpaper" > ~/.cache/current_wallpaper
    echo "video" > ~/.cache/current_wallpaper_type

    pkill -SIGUSR2 waybar
    rm /tmp/wallpaper.txt
fi
