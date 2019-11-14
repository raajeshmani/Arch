hidpiresources=$HOME/.Xresources-hidpi

echo '!! this file is destroyed every time x_normal.sh is run, editing is futile' >$hidpiresources
echo '!! content is defined in x_hidpi.sh'>>$hidpiresources
echo '!! content is loaded in .xinitrc'>>$hidpiresources
echo 'Xft.dpi : 200'>>$hidpiresources
echo 'Xft.antialias: false'>>$hidpiresources
#echo 'Xcursor.size: 64'>>$hidpiresources
#echo 'urxvt.font: xft:Ubuntu Mono derivative Powerline:size=24'>>$hidpiresources
#echo 'urxvt.boldFont: xft:Ubuntu Mono derivative Powerline:size=24:weight=bold'>>$hidpiresources

export GDK_SCALE=2
export GDK_DPI_SCALE=01
export QT_DEVICE_PIXEL_RATIO=2 #QT5 before 5.6
export QT_AUTO_SCREEN_SCALE_FACTOR=1 #QT5 after 5.6

#echo 'font="Cantarell,20,-1,5,75,0,0,0,0,0"' >> ~/.config/Trolltech.conf #this only work if the last header of the file is [Qt]

startx -- -dpi 192
