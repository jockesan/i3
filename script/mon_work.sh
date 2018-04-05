#!/bin/bash

xrandr --output DP-1-1 --rotate left --right-of DP-1-2 --output DP-2 --rotate normal --left-of DP-1-2
notify-send -t 4 "Work Work" "Monitor setup -> Work"

