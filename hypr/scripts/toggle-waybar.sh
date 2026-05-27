#!/bin/bash

# Check if waybar is running
if pgrep -x "waybar" > /dev/null; then
    # If running, kill it
    pkill -x "waybar"
    echo "Waybar stopped"
else
    # If not running, start it
    waybar &
    echo "Waybar started"
fi
