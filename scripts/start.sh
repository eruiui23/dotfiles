#!/bin/bash

# kitty --hold /home/yucandy16/.local/bin/sakurafetch --fetch --theme nara &
kitty tmux new-session "/home/yucandy16/.local/bin/sakurafetch --fetch --theme nara; exec \$SHELL" &

sleep 3
# ~/.config/i3/anti-steal-focus.py &
~/scripts/unload.sh
~/scripts/change_wallpaper.sh &
~/scripts/temp_control.sh &
tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh &
# ~/scripts/dualmonitor-xiaomi.sh &
# APP Startup
~/.local/share/zen/zen &
# sleep 1
 nemo &
# sleep 1
spotify &
# # Flatpaks and others
flatpak run com.discordapp.Discord &
# sleep 1
obsidian &
# anki &
