#!/bin/bash

cd "$HOME/Videos/LiveWallpapers" || exit

yazi --chooser-file /tmp/wallpaper.txt

if [ -f /tmp/wallpaper.txt ]; then
    wallpaper=$(realpath "$(cat /tmp/wallpaper.txt)")

    ext="${wallpaper##*.}"
    ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    wallpaper_frame="$HOME/.cache/wallpaper_frame.png"

    # kill previous wallpaper engines before transition
    pkill -x mpvpaper 2>/dev/null
    pkill -x hyprpaper 2>/dev/null

    # extract frame if video and play transition
    if [[ "$ext" == "mp4" || "$ext" == "webm" || "$ext" == "mkv" ]]; then
        ffmpeg -y -i "$wallpaper" -frames:v 1 "$wallpaper_frame" >/dev/null 2>&1
        awww img "$wallpaper_frame" \
            --transition-type wipe \
            --transition-angle 45 \
            --transition-duration 2.5 \
            --transition-fps 60 \
            --transition-bezier 0.65,0.05,0.36,1

    else
        # fallback (shouldn't happen here)
        awww img "$wallpaper" \
            --transition-type wipe \
            --transition-angle 45 \
            --transition-duration 2.5 \
            --transition-fps 60 \
            --transition-bezier 0.65,0.05,0.36,1
    fi

    # wait for transition to fully finish before mpvpaper takes over
    sleep 2.8

    # start video wallpaper
    nohup mpvpaper -o "no-audio loop hwdec=auto vo=gpu --profile=fast" "*" "$wallpaper" >/dev/null 2>&1 &
    disown

    # generate colors from frame
    wallust run "$wallpaper_frame"

    echo "$wallpaper" > ~/.cache/current_wallpaper
    echo "video" > ~/.cache/current_wallpaper_type

    pkill swaync
    rm /tmp/wallpaper.txt
fi
kill $PPID
