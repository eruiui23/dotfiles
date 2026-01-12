#!/bin/bash

#  i3-msg "workspace 1; append_layout ~/.config/i3/layout.json"

# # i3-msg "workspace 1; append_layout ~/.config/i3/1new.json"
sleep 0.3
# (kitty zsh -c "neofetch; exec zsh" &)
# (kitty zsh -c "neofetch" &)

# sleep 0.3
# (kitty bash -c "unimatrix -l k -s 95; exec zsh" &)
# sleep 0.3
# (kitty bash -c "peaclock; exec zsh" &)
# sleep 0.3
# (kitty bash -c "cava; exec zsh" &)

# ~/scripts/widget.sh &
~/.local/share/zen/zen &
spotify &
# ~/scripts/launch_jisho.sh &
sh -c 'XAPP_FORCE_GTKWINDOW_ICON="whatsapp" firefox --class WebApp-whatsapp2493 --name WebApp-whatsapp2493 --profile /home/yucandy16/.local/share/ice/firefox/whatsapp2493 --no-remote "https://web.whatsapp.com/"' &
nemo &
# yazi &
# ranger &
flatpak run com.discordapp.Discord &
obsidian &
i3-msg restart
