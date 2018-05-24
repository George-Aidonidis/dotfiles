#!/bin/bash
HAS_SECOND_SCREEN=`xrandr | grep -w "DP-1 connected"`
SINGLE_SCREEN=`xrandr --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP-1 --off --output DP-2 --off`
BOTH_SCREENS=`xrandr --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --off --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off`

if [ -n "$HAS_SECOND_SCREEN" ] || [ ! "$HAS_SECOND_SCREEN" = "" ]; then echo $BOTH_SCREENS
else echo $SINGLE_SCREEN
fi

exit 0;

