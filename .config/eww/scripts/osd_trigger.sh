#!/bin/bash

# Define a unique lock file path
LOCK_FILE="/tmp/eww_osd.lock"
TYPE=$1

# 1. Fetch current values and handle mute
if [[ "$TYPE" == "vol" ]]; then
  # Check if muted
  if [[ "$(pamixer --get-mute)" == "true" ]]; then
    ICON="󰝟"
    VALUE="0"
  else
    ICON="󰕾"
    VALUE=$(pamixer --get-volume)
  fi
else
  ICON="󰃞"
  VALUE=$(brightnessctl i | grep -oP '\(\K[0-9]+(?=%\))')
fi

# 2. Update Eww and show the OSD content
eww update osd_icon="$ICON" osd_value="$VALUE" show_osd=true

# 3. Open window only if it's not already visible
eww active-windows | grep -q "osd" || eww open osd

# 4. Timer Logic with a Lock
echo $$ >"$LOCK_FILE"

sleep 2

# Check if another process has started since we began sleeping
if [[ "$(cat "$LOCK_FILE")" == "$$" ]]; then
  eww update show_osd=false
  sleep 0.2
  eww close osd
  rm "$LOCK_FILE"
fi
