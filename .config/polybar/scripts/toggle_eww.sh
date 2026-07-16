#!/usr/bin/env bash

# 1. Change this to the exact name of your eww window definition
WINDOW_NAME="music-widget"

LOCK_FILE="/tmp/eww_${WINDOW_NAME}.lock"

# 2. If the lock file exists, it means you just clicked it. Exit immediately.
if [ -f "$LOCK_FILE" ]; then
  exit 0
fi

# 3. Create the lock file
touch "$LOCK_FILE"

# 4. Toggle the widget safely
eww open --toggle "$WINDOW_NAME"

# 5. Keep the lock active for 300ms to filter out rapid double-clicks
sleep 0.3
rm "$LOCK_FILE"
