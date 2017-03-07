#!/bin/bash

while :; do
    case $1 in
        -e|--enable)
            xinput set-int-prop $(xinput | awk '/Mouse/ {printf "%s",$9}' | sed 's/id=//') "Device Enabled" 8 1
            break
            ;;
        -d|--disable)
            xdotool mousemove $(xrandr | awk '/Screen 0/ {printf "%s",$8 " " $10}' | sed 's/,$//')
            xinput set-int-prop $(xinput | awk '/Mouse/ {printf "%s",$9}' | sed 's/id=//') "Device Enabled" 8 0
            break
            ;;
        *)
            echo "Usage: ./mouse [option]:

-e | --enable: Enable Mouse
-d | --disable: Disable Mouse"
            break
    esac
done
