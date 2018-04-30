#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
sleep 2

# Launch bar1 and bar2
polybar -r -c ~/.config/i3/conf/work-poly.conf lappy &

echo "Bars launched..."
