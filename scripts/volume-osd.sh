#!/bin/bash

# Define the volume step (how much to increase/decrease per keypress)
STEP="5%"
ICON_MUTE=""  # Font Awesome mute icon
ICON_UP=""    # Font Awesome volume up icon
ICON_DOWN=""  # Font Awesome volume down icon
ICON_BAR="─"   # Character for the progress bar

# --- Functions ---

get_volume() {
  pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%'
}

is_muted() {
  pactl get-sink-mute @DEFAULT_SINK@ | grep -q "yes"
}

send_notification() {
  CURRENT_VOL=$(get_volume)

  # Select icon based on status
  if is_muted; then
    ICON=$ICON_MUTE
    BAR_STATUS="Mute"
    HINT_VALUE=0
  elif [ "$CURRENT_VOL" -gt 50 ]; then
    ICON=$ICON_UP
    BAR_STATUS=$(seq -s $ICON_BAR $(($CURRENT_VOL / 5)) | tr -d '[:digit:]')
    HINT_VALUE=$CURRENT_VOL
  else
    ICON=$ICON_DOWN
    BAR_STATUS=$(seq -s $ICON_BAR $(($CURRENT_VOL / 5)) | tr -d '[:digit:]')
    HINT_VALUE=$CURRENT_VOL
  fi

  # Send the notification to Dunstify
  dunstify -a "osd" -i "$ICON" -r 9910 -h int:value:$HINT_VALUE "VOL: $CURRENT_VOL%" 
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
