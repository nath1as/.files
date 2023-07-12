#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xset -b
st -q -o -f
xrandr --output eDP-1 --mode 1600x900 --rate 60
exec i3
