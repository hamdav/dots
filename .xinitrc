#!/bin/sh

setxkbmap se &
xrdb /home/david/.Xresources 
exec i3
