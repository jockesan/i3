#!/bin/bash
#diry fix for my lack of coding skills :(
notify-send -t 5 "Changing settings in 5" 
sleep 5
xrandr --output DP-1-1 -off
xrandr --output DP-2 --off
xrandr --output DP-1-1 --of
xrandr --auto
xrandr --output DP-1-1 --rotate left --right-of DP-1-2 --output DP-2 --rotate normal --left-of DP-1-2 --output DP-1-2  --primary --preferred
xrandr --output eDP-1 --off
notify-send -t 10 "Work Work" "Monitor setup  -> Work"

