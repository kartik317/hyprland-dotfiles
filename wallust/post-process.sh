#!/bin/bash
# ~/.config/wallust/post-process.sh

wallust run "$1"

sed -i 's/0x#\([0-9A-Fa-f]\{8\}\)/0x\1/g' ~/.config/wallust/hyprland.conf
