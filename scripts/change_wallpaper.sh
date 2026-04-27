#!/bin/bash

# Ensure it knows which display to talk to
export DISPLAY=:0

# Get the current hour (0-23)
HOUR=$(date +%H)

# Use absolute paths (No spaces after the = sign)
DAWN="/home/yucandy16/Pictures/WPv2/dawn.jpg"
MORNING="/home/yucandy16/Pictures/WPv2/morning.jpg"
MORNING2="/home/yucandy16/Pictures/WPv2/morning2.jpg"
NOON="/home/yucandy16/Pictures/WPv2/noon.jpg"
EVENING="/home/yucandy16/Pictures/WPv2/evening.jpg"
NIGHT="/home/yucandy16/Pictures/WPv2/night.jpg"

# if [ "$HOUR" -ge 3 ] && [ "$HOUR" -lt 6 ]; then
#   WALLPAPER=$DAWN
# elif [ "$HOUR" -ge 6 ] && [ "$HOUR" -lt 9 ]; then
#   WALLPAPER=$MORNING
# elif [ "$HOUR" -ge 9 ] && [ "$HOUR" -lt 12 ]; then
#   WALLPAPER=$MORNING2
# elif [ "$HOUR" -ge 12 ] && [ "$HOUR" -lt 16 ]; then
#   WALLPAPER=$NOON
# elif [ "$HOUR" -ge 16 ] && [ "$HOUR" -lt 18 ]; then
#   WALLPAPER=$EVENING
# else
#   # Covers 18:00 to 02:59
#   WALLPAPER=$NIGHT
#   # WALLPAPER=$NOON
# fi

WALLPAPER=$NOON
# Set the wallpaper using nitrogen
#0 nitrogen --set-zoom-fill --save "$WALLPAPER"
nitrogen --head=0 --set-zoom-fill --save "$WALLPAPER"
nitrogen --head=1 --set-zoom-fill --save "$WALLPAPER"
