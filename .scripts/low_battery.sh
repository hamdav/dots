#!/bin/bash

#Script will change background when battery is low
# Create a cron job to run this every 5 minutes

if [[ `cat /sys/class/power_supply/BAT0/status | grep Discharging` && `cat /sys/class/power_supply/BAT0/capacity` -lt '15' ]] ; then
    feh --bg-scale /home/david/Pictures/Wallpapers/low_battery-wallpaper.jpg
    light -S 0.2
elif  cat ~/.fehbg | grep -q "/Wallpapers/low_battery-wallpaper.jpg"  ; then
        feh --bg-scale /home/david/Pictures/Wallpapers/wallpaper.jpg
fi
