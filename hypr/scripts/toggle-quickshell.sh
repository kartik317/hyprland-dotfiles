#!/bin/bash

# Check if qs (quickshell) is running
if pgrep -f "qs" | grep -v grep > /dev/null; then
    echo "Quickshell is running. Killing it..."
    pkill -f "qs"
    echo "Quickshell killed."
else
    echo "Quickshell is not running. Starting it..."
    qs &
    echo "Quickshell started."
fi
