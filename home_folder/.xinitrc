#!/bin/sh

# Executed on startx, this script set some basic x
# settings (keyboard rate, system bell, Virtualbox
# tools), call other starting scripts, and finally
# start the window manager

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
  xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
  xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
  xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
  xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?* ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Check and enable various useful services if Arch is running inside VirtualBox
# Also can use `dmesg` command to check this
if [ $(lspci | grep -i VirtualBox | wc -l) -gt 0 ]; then
  /usr/bin/VBoxClient-all
fi

# Repeated keys rate:
# First number: indicates the ammount of time (in ms) after which the key repeat itself
# Second number: indicates the throttle interval between repeated keys (in ms)
xset r rate 175 38

# Deactivate system bell
xset b off

# Autostart applications
if [ -f ~/.autostart ]; then
  sh ~/.autostart &
fi

# Lauch i3 wm and add log to home folder
exec i3 -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1
