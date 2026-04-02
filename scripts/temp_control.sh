#!/bin/bash

# Get the current hour (0-23)
HOUR=$(date +%H)

# Set temperatures (Typical values: 6500=Day, 3000-4000=Night)
DAY_TEMP=6500
NIGHT_TEMP=4000

if [ "$1" == "toggle" ]; then
  # If currently at night temp, switch to day, and vice versa
  # This is useful if you want a manual override button in Eww
  CURRENT=$(xsct -v 2>&1 | grep -oP '(?<=Temperature: )[0-9]+')
  if [ "$CURRENT" -le "$NIGHT_TEMP" ]; then
    xsct $DAY_TEMP
  else
    xsct $NIGHT_TEMP
  fi
else
  # Automatic logic based on time
  # Night time: 8 PM (20) to 6 AM (06)
  if [ "$HOUR" -ge 20 ] || [ "$HOUR" -le 6 ]; then
    xsct $NIGHT_TEMP
  else
    xsct $DAY_TEMP
  fi
fi
