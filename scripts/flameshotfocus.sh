#!/bin/bash

# Simpan ID window aktif sebelum flameshot
# PREV_WIN=$(xdotool getactivewindow)

# Jalankan flameshot GUI
# flameshot gui 

## second method
area=$(slop -f "%wx%h+%x+%y") || exit 1

maim -g "$area" | xclip -selection clipboard -t image/png

paplay /usr/share/sounds/freedesktop/stereo/camera-shutter.oga 2>/dev/null &

