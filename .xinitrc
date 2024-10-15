#!/bin/bash
~/.config/screenlayout/screen.sh
systemctl --user start xdg-desktop-portal-gtk 
setxkbmap -layout pl

export QT_QPA_PLATFORMTHEME=qt5ct
nm-applet &
blueman-applet &
megasync -b &
picom -b &
slstatus &
dunst &
nitrogen --restore &

exec dwm 

