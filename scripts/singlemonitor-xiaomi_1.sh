#!/bin/sh

# 1. Setup Display Layout
xrandr --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-4 --off
xrandr --output HDMI-0 --primary --rate 180.00 --mode 1920x1080 --pos 0x0 --rotate normal
# xrandr --output DP-4 --mode 1920x1080 --pos 1920x0 --rotate normal

# 2. Give i3 a split second to recognize the new output
sleep 1

# 3. Move all workspaces to the primary monitor (HDMI-0)
i3-msg -t get_workspaces | jq -r '.[].name' | xargs -I % i3-msg "workspace %; move workspace to output HDMI-0"

# 4. Focus back on your preferred starting workspace (optional)
# i3-msg "workspace 1"
