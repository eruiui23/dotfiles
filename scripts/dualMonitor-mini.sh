
#!/bin/bash
xrandr --output DP-1-2 --auto --left-of eDP
# xrandr --output eDP --auto --pos 0x0 --output DP-1-2 --mode 1280x720 --pos -1280x540 
# xrandr --output eDP --auto --pos 0x0 --output DP-1-2 --auto --pos -1280x540 

sleep 1

i3-msg "workspace 1, move workspace to output eDP"
i3-msg "workspace 2, move workspace to output eDP"
i3-msg "workspace 3, move workspace to output eDP"
i3-msg "workspace 4, move workspace to output eDP"
i3-msg "workspace 5, move workspace to output eDP"
i3-msg "workspace 6, move workspace to output eDP"
i3-msg "workspace 7, move workspace to output eDP"
i3-msg "workspace 8, move workspace to output eDP"
i3-msg "workspace 9, move workspace to output eDP"
i3-msg "workspace 10, move workspace to output eDP"

i3-msg "workspace 11, move workspace to output DP-1-2"
i3-msg "workspace 12, move workspace to output DP-1-2"
i3-msg "workspace 13, move workspace to output DP-1-2"

xrandr --output DP-1-2 --gamma 1.5:1.3:1.1

i3-msg reload

