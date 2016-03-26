# dotfiles

Config tested successfully on Arch Linux with i3wm, Debian 8 with i3wm and Linux Mint 17 with cinnamon/i3wm.

## home_folder

### .config/
#### i3status/config
Configuration for i3status. Straightforward: display disks, network, battery, volume informations and the time, in that order.

#### nvim/*
Neovim configuration. Composed only of symbolic links to its vim counterparts.

#### openbox/*
Openbox configuration files. The last time I used openbox was a long time ago (on Arch / CrunchBang) so may be outdated.
 - "autostart": startup script for each openbox session.
 - "menu.xml": openbox menu configuration
 - "rc.xml": main openbox configuration (keybindings and tweaks) 
 - 

#### terminator/config
Terminator terminal configuration, mainly profiles. Needs powerline fonts.

### .i3/
Multiple i3 configuration files.
__WIP__

### ./
#### .Xresources
Configuration for X applications. Mainly _rxvt-unicode_.

#### .autostart
Script launched on startx / login shell to launch basic applications on boot.

#### .bash_aliases
Aliases used by bash / zsh. Mainly git and npm ones.

#### .bashrc
Basic bash configuration.

#### .jscsrc
JavaScript style validation. On its way to be replaced by an eslintrc.

#### .jshintrc
JavaScript linter. On its way to be replaced by an eslintrc.

#### .profile_mint
Simple script called by login shell on linux Mint to run autostart scripts: namely .autostart and .xsessionrc

#### .tern-config
Close to empty tern configuration file. Used by tern, itself used by vim.

#### .vimrc
Bloated but functionnal configuration for vim with countless plugins. Fully compatible with neovim.

#### .xbindkeysrc
Configuration for xbindkeys, which bind keys to actions. Mainly used to catch media keys.

#### .xinitrc	
Called on startx. Call startup scripts (.xsessionrc, autostart...)

#### .xsessionrc
Xsession configuration. Used here like (but before) the .autostart script but mainly for X applications tweaks (where .autostart start Applications).

#### .zshrc
Z shell configuration. Needs a custom theme "normcore" based on the theme norm.
