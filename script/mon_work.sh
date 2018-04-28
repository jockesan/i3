#!/bin/bash
notify-send -t 5 "Changing settings in 5" sleep 5
xrandr --output DP-1-1 --rotate left --right-of DP-1-2 --output DP-2 --rotate normal --left-of DP-1-2 --output DP-1-2  --primary --preferred
notify-send -t 10 "Work Work" "Monitor setup  -> Work"

