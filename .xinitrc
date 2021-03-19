#!/bin/sh

setxkbmap se &
udiskie --tray &
xrdb /home/david/.Xresources 
exec i3
