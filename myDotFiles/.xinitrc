
#export _JAVA_AWT_WM_NONREPARENTING=1
#! /bin/bash 
export TERMINAL=urxvt
export VISUAL=vim
export EDITOR=vim
export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export GDK_SCALE=2
xrandr --auto
xrandr --dpi 192 
xrdb -merge ~/.Xresources 
#feh for wallpaper
~/.fehbg &
#dbus-launch --exit-with-session i3
#exec i3 

# Here Xfce is kept as default
session=${1:-i3}

case $session in
    i3                ) exec i3;;
    openbox-session   ) exec startopenbox;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac
