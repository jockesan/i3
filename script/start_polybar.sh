#!/bin/bash
killall polybar
sleep 2
polybar -r -c  ~/.config/i3/conf/work-poly.conf lappy &

