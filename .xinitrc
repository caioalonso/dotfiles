#!/bin/sh
while true; do
    dwmbar
    sleep 10s
done &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xset r rate 200 20
xset +fp /usr/share/fonts/local/
setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll -model pc105  -layout us,br

#RANDOM_WALLPAPER="$(ls -d1 ~/.wallpaper/*.jpg ~/.wallpaper/*.png | shuf -n1)"
#RESOLUTION="$(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')"
#rm /tmp/tempwall.jpg
#convert "$RANDOM_WALLPAPER" \
  #-gravity center \
  #-resize "$RESOLUTION^" \
  #-crop "$RESOLUTION+0+0" \
  #+repage \
  #/tmp/tempwall.jpg
#bgs /tmp/tempwall.jpg

#redshift &
urxvtd -q -f -o
exec dwm

