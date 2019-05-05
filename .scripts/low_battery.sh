#!/bin/bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 06:15:00 ]] ; then
    feh --bg-scale ~/Wallpapers/low_battery-wallpaper.jpg
fi
