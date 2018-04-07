#!/bin/bash

xrandr --output DP-1-2 --same-as eDP-1 
gnome-terminal
notify-send -t 4 "Welcome Home" "Monitor setup -> home"
