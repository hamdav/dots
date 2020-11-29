#!/bin/zsh

# urxvt_random_bg

# open urxvt with random background color

background_arr=("0/0/0" "0/0/2" "0/1/2" "0/2/0" "0/2/1" "0/2/2" "1/2/0" "2/0/0" "2/0/1" "2/0/2")

rand_bg=$background_arr[$(( (RANDOM % ${#background_arr}) + 1))]

urxvt -bg rgb:$rand_bg
