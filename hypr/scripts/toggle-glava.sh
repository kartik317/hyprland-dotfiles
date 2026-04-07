#!/bin/bash
if pgrep -x "glava" > /dev/null; then
    pkill -f glava
    echo "Glava stopped"
else
    glava --desktop > /dev/null 2>&1 &
    echo "Glava started"
fi
