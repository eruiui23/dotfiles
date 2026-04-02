#!/bin/bash

# We use a temp file to track the state
STATE_FILE="/tmp/deadd_dnd_state"

if [ ! -f "$STATE_FILE" ] || [ "$(cat "$STATE_FILE")" == "off" ]; then
  notify-send "DND Enabled" "Popups are now paused." -t 2000
  notify-send.py a --hint boolean:deadd-notification-center:true string:type:pausePopups
  echo "on" >"$STATE_FILE"
else
  notify-send.py a --hint boolean:deadd-notification-center:true string:type:unpausePopups
  notify-send "DND Disabled" "Popups are now active." -t 2000
  echo "off" >"$STATE_FILE"
fi
