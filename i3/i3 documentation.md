*Installation*

Already i have a working installation of gnome DM with quite a few applications so basic applications like vim are not included

		install i3 dmenu

Install everything that comes with that

In ~/.xinitrc add

		exec i3
		
To start i3, use

		startx

After starting everything looks tiny, which can be fixed by setting dpi in ~/.xinitrc

		xrandr --auto
		xrandr --dpi 192		 					multiple of 96	== twice the size
		export TERMINAL=urxvt					for terminal to work
		xrdb -merge ~/.Xresources			Merging Xresources to work on boot
		~/.fehbg &										Setting up of wallpaper to start at boot
		exec i3												Starting of i3 ... after this command nothing executes
	


Setting up the wallpaper
~/.fehbg

		#!/bin/sh
		feh --bg-scale '/home/ryuuk_shinigami/Pictures/paint.jpeg'
	
For customizing the terminal    Includes hyper-snazzy :luv: color theme and dpi for HiDPi adjusted
~/.Xresources

		*.font: xft:Menlo:size=10

		Xft.dpi: 180 
		Xft.autohint: 0
		Xft.lcdfilter:  lcddefault
		Xft.hintstyle:  hintfull
		Xft.hinting: 1
		Xft.antialias: 1
		Xft.rgba: rgb


		*background:   [97]#282a36
		*foreground:   #eff0eb
		*cursorColor:  #9aedfe

		*color0:      #33303b
		*color8:      #4f4b58
		*color1:      #ff5c57
		*color9:      #ff5c57
		*color2:      #5af78e
		*color10:     #5af78e
		*color3:      #f3f99d
		*color11:     #f3f99d
		*color4:      #57c7ff
		*color12:     #57c7ff
		*color5:      #ff6ac1
		*color13:     #ff6ac1
		*color6:      #9aedfe
		*color14:     #9aedfe
		*color7:      #eff0eb
		*color15:     #eff0eb