#!/bin/bash
~/.config/screenlayout/screen.sh
systemctl --user start xdg-desktop-portal-gtk 

export QT_QPA_PLATFORMTHEME=qt5ct
nm-applet &
blueman-applet &
megasync -b &
picom -b &
slstatus &
dunst &
nitrogen --restore &

setxkbmap -layout pl
exec dwm 

