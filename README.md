# dotfiles

Config tested successfully on Arch Linux with i3wm, Debian 8 with i3wm and Linux Mint 17 with cinnamon/i3wm.

## \_home\_
Those files just need to be directly in the $HOME directory.

### .config/alacritty/alacritty.yml
Alacritty terminal config (main terminal).

### .config/i3status/config
Configuration for i3status. Straightforward: display disks, network, battery, volume informations and the time, in that order.

### .config/nvim/*
Neovim configuration. Composed only of symbolic links to its vim counterparts.

### .config/openbox/*
Openbox configuration files. The last time I used openbox was a long time ago (on Arch / CrunchBang) so may be outdated.
 - "autostart": startup script for each openbox session.
 - "menu.xml": openbox menu configuration
 - "rc.xml": main openbox configuration (keybindings and tweaks)

### .config/terminator/config
Terminator terminal configuration, mainly profiles. Needs powerline fonts.

### .i3/
Multiple i3 configuration files.

### .irssi/*
Scripts used by the IRC client irssi:
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
Basic bash configuration.

### .profile_mint
Simple script called by login shell on linux Mint to run autostart scripts: namely .autostart and .xsessionrc
Needs to be renamed to '.profile' (ONLY if .xinitrc is not already launched).

### .spacemacs
Spacemacs configuration.

### .tern-config
Close to empty tern configuration file. Used by tern, itself used by vim.

### .tmux.conf
Tmux configuration.

### .vimrc
Bloated but functionnal configuration for vim with countless plugins. Fully compatible with neovim.

### .xbindkeysrc
Configuration for xbindkeys, which bind keys to actions. Mainly used to catch media keys.

### .xinitrc
Called on startx. Call startup scripts (.xsessionrc, autostart...)

### .xrandr\_autodetect.sh
Script to autodetect multi-monitor setups and call xrandr accordingly (needs xrandr binary).

### .Xresources
Configuration for X applications. Mainly _rxvt-unicode_.

### .xsessionrc
Xsession configuration. Used here like (but before) the .autostart script but mainly for X applications tweaks (where .autostart start Applications).

### .zshrc
Z shell configuration.

## linters
Javascript linters' rules.

### .jscsrc
JavaScript style validation.

### .jshintrc
JavaScript linter for code errors.

### .eslintrc
JavaScript linter. Do both style validation and errors (doesn't need the other linters).
