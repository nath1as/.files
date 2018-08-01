#!/bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xset r rate 550 20
urxvtd -q -o -f
exec i3

