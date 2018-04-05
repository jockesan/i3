#!/bin/bash

# Create a short delay so changes in brightness can be registered
sleep 0.2

# Get the brightness percentage:
MAX_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness);
BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/actual_brightness);
PCT=$(echo $BRIGHTNESS $MAX_BRIGHTNESS  | awk '{printf "%4.0f\n",($1/$2)*100}')

# Round the brightness percentage:
LC_ALL=C

# Kill previous notifications so the brightness notifications don't pile up:
NOTIFD=`cat /usr/share/dbus-1/services/org.freedesktop.Notifications.service | grep Exec | cut -d = -f 2`
killall -q $NOTIFD


if [[ $LANG == "de_DE.UTF-8" ]]; then
        BRIGHTNESS="Helligkeit"
elif [[ $LANG == "ga_IE.UTF-8" ]]; then
        BRIGHTNESS="Gile"
else
        BRIGHTNESS="Let there be light @"
fi
# Send the notification with the icon:
notify-send `echo $BRIGHTNESS: $PCT ` \
        -t 100 -i /home/jowe01/.config/i3/icons/brightness-icon.png
