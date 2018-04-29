#!/bin/bash
killall polybar
sleep 2
wal -R
sleep 1
polybar -r -c  ~/.config/i3/conf/work-poly.conf lappy &

