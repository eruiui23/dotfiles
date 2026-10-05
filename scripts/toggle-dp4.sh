#!/usr/bin/env bash

TARGET="DP-4"

# Check if DP-4 is active in the current monitor list
if xrandr --listactivemonitors | grep -q "$TARGET"; then
    # Turn off only the laptop display
    xrandr --output "$TARGET" --off
else
    # Turn the laptop display back on at native resolution
    # Adjust --left-of, --right-of, or --below if needed relative to your external screen
    xrandr --output "$TARGET" --auto
fi
