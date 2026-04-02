#!/bin/bash

# Function to get current volume
get_vol() {
  pamixer --get-volume
}

# Print initial volume
get_vol

# Listen for changes
pactl subscribe | stdbuf -oL grep --line-buffered "sink" | while read -r line; do
  get_vol
done
