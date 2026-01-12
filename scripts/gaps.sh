#!/bin/bash

STATE_FILE="$HOME/.cache/i3_gaps_state"
TARGET_GAP=8

# buat file state kalau belum ada
if [ ! -f "$STATE_FILE" ]; then
    echo "off" > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

if [ "$STATE" = "off" ]; then
    i3-msg "gaps inner all set $TARGET_GAP" >/dev/null
    killall picom
    sleep 0.2
    picom --corner-radius 15 &

    # i3-msg "gaps outer all set $TARGET_GAP" >/dev/null
    echo "on" > "$STATE_FILE"
else
    i3-msg "gaps inner all set 0" >/dev/null
    killall picom
    sleep 0.2
    picom --corner-radius 0 &
    
    # i3-msg "gaps outer all set 0" >/dev/null
    echo "off" > "$STATE_FILE"
fi
