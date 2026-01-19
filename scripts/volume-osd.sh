#!/bin/bash

# Define the volume step
STEP="5%"
ICON_MUTE="audio-volume-muted" # Using standard icon names for better compatibility
ICON_UP="audio-volume-high"
ICON_DOWN="audio-volume-low"

# --- Functions ---

get_volume() {
  pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%'
}

is_muted() {
  pactl get-sink-mute @DEFAULT_SINK@ | grep -q "yes"
}

send_notification() {
  CURRENT_VOL=$(get_volume)

  # Select icon and progress value
  if is_muted; then
    ICON="audio-volume-muted"
    HINT_VALUE=0
  else
    HINT_VALUE=$CURRENT_VOL
    [ "$CURRENT_VOL" -gt 50 ] && ICON="audio-volume-high" || ICON="audio-volume-low"
  fi

  # Forces ID 9910 to ensure the notification REPLACES the old one
  # 'transient: true' ensures it never saves to your sidebar history
  gdbus call --session --dest org.freedesktop.Notifications \
    --object-path /org/freedesktop/Notifications \
    --method org.freedesktop.Notifications.Notify \
    "osd" 9910 "$ICON" "VOL: $CURRENT_VOL%" "" "[]" \
    "{\"has-percentage\": <$HINT_VALUE>, \"transient\": <true>}" 2000
}

# --- Main Logic ---
case "$1" in
up)
  pactl set-sink-volume @DEFAULT_SINK@ +$STEP
  send_notification
  ;;
down)
  pactl set-sink-volume @DEFAULT_SINK@ -$STEP
  send_notification
  ;;
mute)
  pactl set-sink-mute @DEFAULT_SINK@ toggle
  send_notification
  ;;
esac
