#!/bin/sh

# File       : /home/wildefyr/.fyre/scripts/mouse
# Maintainer : Wildefyr | http://wildefyr.net
# Copyright  : Wildefyr | Licensed under the WTFPL license.

case $1 in
    -e|--enable)
        wmp 870 1040
        xinput set-int-prop $(xinput | awk '/Mouse/ {printf "%s",$9}' | sed 's/id=//') "Device Enabled" 8 1
        break
        ;;
    -d|--disable)
        ROOT=$(lsw -r); SW=$(wattr w $ROOT); SH=$(wattr h $ROOT); wmp $SW $SH
        xinput set-int-prop $(xinput | awk '/Mouse/ {printf "%s",$9}' | sed 's/id=//') "Device Enabled" 8 0
        break
        ;;
    *)
        echo "Usage: ./mouse [option]:

-e | --enable: Enable Mouse
-d | --disable: Disable Mouse"
        break
esac
