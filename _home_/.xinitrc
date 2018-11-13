#!/bin/sh

# Executed on startx, this script mainly call other starting
# scripts, and finally start the window manager

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
xinitscriptsdirectory=/etc/X11/xinit/xinitrc.d
sysmodmap=/etc/X11/xinit/.Xmodmap
xsession=$HOME/.xsessionrc
autostart=$HOME/.autostart

# deactivate system bell
xset b off

# merge in defaults and keymaps
if [ -f $sysresources ]; then
  xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
  xmodmap $sysmodmap
fi

if [ -f $userresources ]; then
  xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
  xmodmap $usermodmap
fi

if [ -f $xsession ]; then
  . $xsession
fi

# start xinit startup scripts
if [ -d $xinitscriptsdirectory ] ; then
  for f in $xinitscriptsdirectory/?* ; do
    [ -x $f ] && . $f
  done
  unset f
fi

# Autostart various applications
if [ -f $autostart ]; then
  . $autostart
fi

if hash i3 2>/dev/null; then
  # Lauch i3 wm and add log to home folder
  exec i3 -V >> $HOME/i3log-$(date +'%F-%k-%M-%S') 2>&1
fi
