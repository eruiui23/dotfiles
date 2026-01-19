#!/bin/bash

# Jalankan Anki di latar belakang
anki &

# Tunggu 5 detik
sleep 3

# Jalankan Jisho app
XAPP_FORCE_GTKWINDOW_ICON="/home/yucandy16/Downloads/jisho.png" firefox --class WebApp-Jisho6611 --name WebApp-Jisho6611 --profile /home/yucandy16/.local/share/ice/firefox/Jisho6611 --no-remote "https://jisho.org/"
