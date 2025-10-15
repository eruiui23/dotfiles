#!/bin/bash

# Jalankan aplikasi-aplikasi di background
# & di akhir perintah untuk menjalankan proses di background
# sehingga prosesnya tidak "block" dan skrip bisa lanjut ke perintah berikutnya

# i3-msg "workspace 1; append_layout ~/.config/i3/layout.json"

i3-msg "workspace 1; append_layout ~/.config/i3/1new.json"
sleep 0.3
(kitty bash -c "neofetch; exec zsh" &)
sleep 0.3
(kitty bash -c "unimatrix -l k -s 95; exec zsh" &)
sleep 0.3
(kitty bash -c "peaclock; exec zsh" &)
sleep 0.3
(kitty bash -c "cava; exec zsh" &)

~/.local/share/zen/zen &
spotify &
~/scripts/launch_jisho.sh &
nemo &
yazi &
ranger &
discord &
flatpak run md.obsidian.Obsidian &


