#!/bin/bash

if [ -f ~/.config/i3/conf.d/display.txt ]; then
  SETDISPLAY=$(cat ~/.config/i3/conf.d/display.txt)
else
  SETDISPLAY=":0.0"
fi


# Set the wallpaper
DISPLAY=$SETDISPLAY feh --bg-fill "/home/jeffrey/documents/nextcloud/wallpapers/cube-grid.jpg"

# Set screen blanking to 1hr
DISPLAY=$SETDISPLAY xset s 3600 3600 &
