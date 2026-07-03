#!/bin/bash

#  #  i3-msg "workspace 1; append_layout ~/.config/i3/layout.json"
#
#  # # i3-msg "workspace 1; append_layout ~/.config/i3/1new.json"
#  sleep 0.3
# kitty --hold neofetch &
kitty --hold /home/yucandy16/.local/bin/sakurafetch --fetch --theme nara &

#  # (kitty zsh -c "neofetch" &)
#
#  # sleep 0.3
#  # (kitty bash -c "unimatrix -l k -s 95; exec zsh" &)
#  # sleep 0.3
#  # (kitty bash -c "peaclock; exec zsh" &)
#  # sleep 0.3
#  # (kitty bash -c "cava; exec zsh" &)
#
#  # ~/scripts/widget.sh &
#  ~/.local/share/zen/zen &
#  spotify &
#  # ~/scripts/launch_jisho.sh &
#  sh -c 'XAPP_FORCE_GTKWINDOW_ICON="whatsapp" firefox --class WebApp-whatsapp2493 --name WebApp-whatsapp2493 --profile /home/yucandy16/.local/share/ice/firefox/whatsapp2493 --no-remote "https://web.whatsapp.com/"' &
#  nemo &
#  # yazi &
#  # ranger &
#  flatpak run com.discordapp.Discord &
#  obsidian &
# i3-msg restart

sleep 3
~/.config/i3/anti-steal-focus.py &
~/scripts/change_wallpaper.sh &
~/scripts/temp_control.sh &
~/.local/share/zen/zen &
sleep 1
nemo &
# sleep 1
# sh -c 'XAPP_FORCE_GTKWINDOW_ICON="whatsapp" firefox --class WebApp-WhatsApp5233 --name WebApp-WhatsApp5233 --profile /home/yucandy16/.local/share/ice/firefox/WhatsApp5233 --no-remote "https://web.whatsapp.com/"' &
sleep 1
spotify &
# Flatpaks and others
flatpak run com.discordapp.Discord &
sleep 1
obsidian &
anki &
# sleep 3
# i3-msg workspace 1
# i3-msg '[urgent="latest"] focus'
