#!/bin/bash

# This script auto-detect the monitor setup to set xrandr accordingly:
# Second monitor at the left of your primary monitor

# It is executed by the ./.autostart script
# TODO Check if xrandr exists
# TODO Allow more than two monitors

# Set xrand for multi-monitor setup
monitorsName=$(xrandr | sed -rn 's/([A-Za-z0-9]+) connected.*/\1/p')
numberOfMonitors=$(echo "$monitorsName" | wc -l)

xrandr --auto
if [ $numberOfMonitors -gt 1 ]; then
  monitor1=$(echo "$monitorsName" | head -1)
  monitor2=$(echo "$monitorsName" | head -2 | tail -1)
  xrandr --output $monitor1 --primary --left-of $monitor2
fi
