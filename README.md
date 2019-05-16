# dotfiles

Config tested successfully on Arch Linux with i3wm, Debian 8 with i3wm and Linux Mint 17 with cinnamon/i3wm.

## \_home\_
Those files just need to be directly in the $HOME directory.

### .config/alacritty/alacritty.yml
[Alacritty](https://github.com/jwilm/alacritty) terminal configuration.

### .config/i3status/config
Configuration for [i3status](https://i3wm.org/i3status/).
Straightforward: display disks, network, battery, volume informations and the time, in that order.

### .config/lxterminal/lxterminal.conf
Basic [lxterminal](https://wiki.lxde.org/fr/LXTerminal) configuration.

### .config/nvim/*
[Neovim](https://neovim.io/) configuration.
Composed only of symbolic links to its vim counterparts.

### .config/oni/*
[Oni](https://github.com/onivim/oni) (electron-based front end for neovim) configuration files.

### .config/openbox/*
[Openbox](http://openbox.org/wiki/Main_Page) configuration files.
The last time I used openbox was a long time ago (on Arch / CrunchBang) so may be outdated.
 - "autostart": startup script for each openbox session.
 - "menu.xml": openbox menu configuration
 - "rc.xml": main openbox configuration (keybindings and tweaks)

### .config/polybar/*
[Polybar](https://polybar.github.io/) configuration.
Default status bar used in my i3 windows manager configuration

### .config/ranger/*
[Ranger](https://ranger.github.io/) configuration, default file manager.

### .config/redshift/redshift.conf
[redshift](http://jonls.dk/redshift/) configuration.

### .config/sxhkd/sxhkdrc
[Simple X hotkey daemon](https://github.com/baskerville/sxhkd) configuration to be used with the [bspwm](https://github.com/baskerville/bspwm) window manager.

### .config/terminator/config
[Terminator terminal](https://gnometerminator.blogspot.com/p/introduction.html) configuration, mainly profiles. Needs powerline fonts.

### .config/termite/config
[termite](https://github.com/thestinger/termite) (terminal) configuration

### .config/xfce4/terminal/terminalrc
[xfce4-terminal](https://docs.xfce.org/apps/terminal/start) configuration

### .i3/
Multiple [i3](https://i3wm.org/) configuration files.

### .irssi/*
Scripts used by the IRC client [irssi](https://irssi.org/):
  - nickcolor.pl:
    Display each nick in an IRC channel in a different color.

  - trackbar.pl:
    Shows a bar where you've last read a window.

  - autorun/*:
    These scripts are symbolic links to the scripts I want to launch as irssi starts.

### .autostart
Script launched on startx / login shell to launch basic applications on boot.

### .bash_aliases
Aliases used by bash / zsh. Mainly git and npm ones.

### .bashrc
Basic [bash](https://www.gnu.org/software/bash/) configuration.

### .nethackrc
Some essential config for [nethack](https://www.nethack.org/)

### .profile_mint
Simple script called by login shell on [linux Mint](https://www.linuxmint.com/) to run autostart scripts: namely .autostart and .xsessionrc
Needs to be renamed to '.profile' (ONLY if .xinitrc is not already launched).

### .spacemacs
[Spacemacs](http://spacemacs.org/) configuration.

### .tern-config
Close to empty [tern](https://ternjs.net/) configuration file. Used by tern, itself used by vim.

### .tmux.conf
[tmux](https://github.com/tmux/tmux) configuration.

### .update\_wallpaper.sh
Requires [feh](https://feh.finalrewind.org/) and some wallpapers in `$HOME/images/wallpapers`.
Update the background every hour.

### .vimrc
Bloated but functionnal configuration for [vim](https://www.vim.org/) with countless plugins. Fully compatible with neovim.

### .xbindkeysrc
Configuration for [xbindkeys](https://linux.die.net/man/1/xbindkeys), which bind keys to actions. Mainly used to catch media keys.

### .xinitrc
Called on [startx](https://www.x.org/archive/X11R6.9.0/doc/html/startx.1.html). Call startup scripts (.xsessionrc, autostart...)

### .xrandr\_autodetect.sh
Script to autodetect multi-monitor setups and call [xrandr](https://www.x.org/archive/X11R7.5/doc/man/man1/xrandr.1.html) accordingly (needs xrandr binary).

### .Xresources
Configuration for X applications. Mainly [rxvt-unicode](http://software.schmorp.de/pkg/rxvt-unicode.html) and [xterm](https://invisible-island.net/xterm/).

### .xsessionrc
Xsession configuration. Used here like (but before) the .autostart script but mainly for X applications tweaks (where .autostart start Applications).

### .zshrc
[Z shell](http://www.zsh.org/) configuration.

## linters
Linters' rules.

### .eslintrc
Default [ESLint](https://eslint.org/) configuration. Do both style validation and errors (doesn't need the other linters).

### .jshintrc
Default [JSHint](http://jshint.com/) configuration. JavaScript linter for code errors.

### tslint.json
Default [TSLint](https://palantir.github.io/tslint/) configuration. TypeScript linter.
