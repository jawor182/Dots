#!/bin/bash


# Launch applications in the background
~/.config/screenlayout/screen.sh
picom -b &
nm-applet &
blueman-applet &
dwmblocks & 
megasync -b &
dunst &
nitrogen --restore &
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=gnome
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
systemctl --user start xdg-desktop-portal-gtk 
# dbus-launch ssh-agent dwm
# pavucontrol &
setxkbmap -layout pl

export GTK_THEME=Adwaita-dark
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
export QT_QPA_PLATFORMTHEME=qt5ct

xrdb -load ~/.Xresources
exec dwm 

