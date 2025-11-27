#!/bin/bash

# Simpan ID window aktif sebelum flameshot
# PREV_WIN=$(xdotool getactivewindow)

# Jalankan flameshot GUI
# flameshot gui --clipboard


# Pilih area (drag)
area=$(slop -f "%wx%h+%x+%y") || exit 1

# Screenshot langsung ke clipboard
maim -g "$area" | xclip -selection clipboard -t image/png

# Notifikasi kecil
notify-send "Screenshot copied to clipboard"
paplay /usr/share/sounds/freedesktop/stereo/camera-shutter.oga 2>/dev/null &



# Fokuskan kembali window sebelumnya
# xdotool windowactivate "$PREV_WIN"
