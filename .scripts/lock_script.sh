#!/bin/bash

# Uses i3lock-color built from AUR
# and the convert command from imagemagick


GREEN=00D000FF
YELLOW=FFDD00FF
RED=D00000FF
BLACK=000000FF
DARKGREY=010101FF
GREY=999999FF
GHOST=FFFFFF90
GHOSTYELLOW=FFDD0050
GHOSTRED=D0000050
TRANSPARENT=FFFFFF00

convert /home/david/Pictures/Wallpapers/calm_lake-wallpaper.jpg \
    -resize 1366x768\! RGB:- | \
i3lock --force-clock \
    --raw 1366x768:rgb \
    --image=/dev/stdin \
    --bar-indicator \
    --bar-width=5 \
    --bar-max-height=120 \
    --bar-step=30 \
    --bar-base-width=2 \
    --bar-color=$GHOST \
    --bar-periodic-step=2 \
    --refresh-rate=0.1 \
    --bar-position=228 \
    --bar-direction=2 \
    --ringvercolor=$GHOSTYELLOW \
    --ringwrongcolor=$GHOSTRED \
    --keyhlcolor=$GHOST \
    --bshlcolor=$GHOSTRED \
    --timecolor=$BLACK \
    --timestr="%H:%M:%S" \
    --timepos="w/5:2*h/3" \
    --datecolor=$DARKGREY \
    --datestr="%A %d %B %Y" \
    --timesize=90 \
    --datesize=14 \
    --datepos="tx:ty+h/20" \
    --veriftext="" \
    --wrongtext="" \
    --noinputtext=""
