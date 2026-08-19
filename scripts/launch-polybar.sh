#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

export PATH="$HOME/.local/bin:$PATH"

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# # dual monitor
if type "xrandr" >/dev/null 2>&1; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar >/dev/null 2>&1 &
    MONITOR=$m polybar --reload bar2 >/dev/null 2>&1 &
  done
else
  polybar --reload bar >/dev/null 2>&1 &
  polybar --reload bar2 >/dev/null 2>&1 &
fi

# single monitor
# polybar bar >/dev/null 2>&1 &
# polybar bar2 >/dev/null 2>&1 &

echo "Bars launched..."
