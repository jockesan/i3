#!/bin/bash
OUT=$1

xrandr --output $OUT --same-as  eDP-1

notify-send -t 4 "PowerPoint time!" "Monitor setup -> Mirror"
