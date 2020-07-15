#!/bin/bash

# Uses i3lock-color built from AUR

#i3lock --blur=10 --clock --indicator --insidecolor=232C31FF --ringcolor=9EA7A6FF --line-uses-inside --keyhlcolor=2A5491FF --bshlcolor=A03B1EFF --insidevercolor=232C31FF --insidewrongcolor=A03B1Eff --ringvercolor=9EA7A6FF --ringwrongcolor=3F4944FF --separatorcolor=2A5491FF --verifcolor=FFFFFFFF --wrongcolor=232C31FF --timecolor=9EA7A6FF --datecolor=9EA7A6FF

# Alt 

#i3lock --blur=0 --clock --indicator \
    #--insidevercolor=FFFFFF00 \
    #--insidewrongcolor=FFFFFF00 \
    #--insidecolor=FFFFFF00 \
    #--ringvercolor=FFFFFF00 \
    #--ringwrongcolor=FFFFFF00 \
    #--ringcolor=FFFFFF00 \
    #--linecolor=FFFFFF00 \
    #--keyhlcolor=8EA01F99 \
    #--bshlcolor=DC571A99 \
    #--separatorcolor=FFFFFF00 \
    #--verifcolor=8EA01FFF \
    #--wrongcolor=DC571AFF \
    #--indpos="w/2:h/2" \
    #--timecolor=888888FF \
    #--timestr="%H:%M:%S" \
    #--timepos="w/5:2*h/3" \
    #--datecolor=888888FF \
    #--datestr="%A, %m %Y" \
    #--timesize=90 \
    #--datesize=14 \
    #--verifsize=40 \
    #--wrongsize=40 \
    #--datepos="tx:ty+h/20" \
    #--radius=100 

GREEN=00D000FF
YELLOW=FFDD00FF
RED=D00000FF
BLACK=000000FF
DARKGREY=010101FF
TRANSPARENT=FFFFFF00
    
i3lock --force-clock \
    --image=/home/david/Pictures/Wallpapers/wallpaper.jpg \
    --insidevercolor=$BLACK \
    --insidewrongcolor=$BLACK \
    --insidecolor=$BLACK \
    --ringvercolor=$YELLOW \
    --ringwrongcolor=$RED \
    --ringcolor=$BLACK \
    --linecolor=$TRANSPARENT \
    --keyhlcolor=$GREEN \
    --bshlcolor=$RED \
    --separatorcolor=$TRANSPARENT \
    --verifcolor=$YELLOW \
    --wrongcolor=$RED \
    --indpos="4*w/5:3*h/4" \
    --timecolor=$BLACK \
    --timestr="%H:%M:%S" \
    --timepos="w/5:2*h/3" \
    --datecolor=$DARKGREY \
    --datestr="%A, %m %Y" \
    --timesize=90 \
    --datesize=14 \
    --verifsize=40 \
    --wrongsize=40 \
    --datepos="tx:ty+h/20" \
    --radius=20 \
    --ring-width=20 \
    --veriftext="" \
    --wrongtext="" \
    --noinputtext=""
