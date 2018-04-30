#!/bin/bash

xrandr --output DP-1-1 --off --output DP-2 --off --output DP-1-3 --off --output DP-1-2 --off --output eDP-1 --off
xrandr --auto 
xrandr --output eDP-1 --primary
notify-send -t 8 "xrandr auto and pray - mode" "Lets hope for the best here!"
