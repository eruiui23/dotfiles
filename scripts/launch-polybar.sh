#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch both bars
polybar bar >/dev/null 2>&1 &
polybar bar2 >/dev/null 2>&1 &

echo "Bars launched..."
