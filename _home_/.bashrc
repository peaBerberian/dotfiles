#
# ~/.bashrc
#

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.npm/bin:$PATH
export NODE_PATH="$HOME/.npm/lib/node_modules:$NODE_PATH"
export GPG_TTY=$(tty)
export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
export LESS='-R --mouse'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(fzf --bash)"

## Alias definitions.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export ELECTRON_OZONE_PLATFORM_HINT=wayland
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
