#!/bin/bash

if pgrep -x "cava-bg" > /dev/null 2>&1; then
    pkill -x "cava-bg"
    echo "Cava bg stopped"
else
    cava-bg > /dev/null 2>&1 &
    # Give it a moment to start
    sleep 0.2
    if pgrep -x "cava-bg" > /dev/null 2>&1; then
        echo "cava bg started"
    else
        echo "Failed to start cava-bg"
    fi
fi
