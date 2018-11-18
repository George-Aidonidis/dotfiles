#!/bin/sh
# Images are taken from the "hell so easy to use (basic) API" of Unsplash, they are totally free for all use.

# The downloaded images are kept in ~/.local/share/unsplashLinux if the following switch is false.
DO_WE_ERASE_FILES=true

WORKDIR=$HOME'/.local/share/unsplashLinux/'
RANT=$(date +%s)
mkdir -p $WORKDIR
mkdir -p $WORKDIR'old'

wget -q --spider http://google.com
if [ $? -eq 0 ]; then
	echo internet up
else
	exit 1
fi

if $DO_WE_ERASE_FILES
then
	rm $WORKDIR*'.jpg'
else
	mv $WORKDIR*'.jpg' $WORKDIR'old/'
fi

wget -O ${WORKDIR}${RANT}'.jpg' -q https://source.unsplash.com/1920x1080?wallpaper,nature

cp ''${WORKDIR}${RANT}'.jpg' ~/.config/wall.png && feh --bg-scale ~/.config/wall.png
