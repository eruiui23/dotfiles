#!/bin/bash

# i3-msg "workspace 1; append_layout ~/.config/i3/layout.json"

# i3-msg "workspace 1; append_layout ~/.config/i3/1new.json"
# sleep 0.3
# (kitty bash -c "neofetch; exec zsh" &)
# sleep 0.3
# (kitty bash -c "unimatrix -l k -s 95; exec zsh" &)
# sleep 0.3
# (kitty bash -c "peaclock; exec zsh" &)
# sleep 0.3
# (kitty bash -c "cava; exec zsh" &)

# ~/scripts/widget.sh &
~/.local/share/zen/zen &
spotify &
~/scripts/launch_jisho.sh &
google-chrome-stable --app="https://web.whatsapp.com/" --class=WebApp-Whatsapp6689 --name=WebApp-Whatsapp6689 --user-data-dir=/home/yucandy16/.local/share/ice/profiles/Whatsapp6689 &
nemo &
yazi &
ranger &
flatpak run com.discordapp.Discord &
flatpak run md.obsidian.Obsidian &
i3-msg restart  
