#!/bin/bash

#Script will change background when battery is low
# Create a cron job to run this every 5 minutes

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:15:00 ]] ; then
    feh --bg-scale ~/Wallpapers/low_battery-wallpaper.jpg
elif  cat ~/.fehbg | grep -q "/Wallpapers/low_battery-wallpaper.jpg"  ; then
        feh --bg-scale ~/Wallpapers/wallpaper.jpg
fi
