#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# LOOK GTK PARA APPS JAVA
#export  _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true  -Dsun.java2d.xrender=true -Dawt.useSystemAAFontSettings=gasp -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

export GTK_OVERLAY_SCROLLING=0
export VISUAL=vim
export EDITOR=vim
export TERMINAL=urxvt
