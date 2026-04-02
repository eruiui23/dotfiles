#!/bin/bash

# Get the actual backlight device name (usually intel_backlight or amdgpu_bl0)
DEVICE=$(ls /sys/class/backlight/ | head -n 1)

get_bright() {
  brightnessctl -d "$DEVICE" info | grep -oP '\(\K[0-9]+(?=%\))'
}

# Print initial brightness
get_bright

# Watch for file changes in the brightness system file
while inotifywait -e modify "/sys/class/backlight/$DEVICE/brightness" >/dev/null 2>&1; do
  get_bright
done
