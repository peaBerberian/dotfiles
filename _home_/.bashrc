#
# ~/.bashrc
#

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.npm/bin:$PATH
export NODE_PATH="$HOME/.npm/lib/node_modules:$NODE_PATH"
export GPG_TTY=$(tty)
export LESS='-R --mouse'
export PAGER='less -S -R -+X'
export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export QT_QPA_PLATFORM=wayland
export DISPLAY=':0'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

eval "$(fzf --bash)"

## Alias definitions.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

eval "$(zoxide init bash)"
eval "$(starship init bash)"
