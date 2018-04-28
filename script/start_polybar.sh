#!/bin/bash
killall polybar
sleep 5
polybar -r -c  ~/.config/i3/conf/test/work-poly.conf lappy &

