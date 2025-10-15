#!/bin/bash

# Simpan ID window aktif sebelum flameshot
PREV_WIN=$(xdotool getactivewindow)

# Jalankan flameshot GUI
flameshot gui

# Tunggu sedikit (flameshot biasa selesai saat user klik/escape)
# sleep 0.05

# Fokuskan kembali window sebelumnya
xdotool windowactivate "$PREV_WIN"
