#!/bin/bash
xrandr --output DP-1-2 --off --output eDP --auto

sleep 1

# Balikin semua workspace ke layar laptop
for i in {1..13}; do
    i3-msg "workspace $i, move workspace to output eDP"
done

i3-msg reload
