#!/bin/sh

### From skeleton file.
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
### End of skeleton file.

setxkbmap -layout "de(nodeadkeys),us" -option compose:menu -option ctrl:nocaps
xset r rate 300 17
xset b off
xset m 3/2 0

export JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORMTHEME="qt5ct"

exec awesome
