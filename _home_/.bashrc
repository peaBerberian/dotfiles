#
# ~/.bashrc
#

export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source /home/oscar/.config/broot/launcher/bash/br
eval "$(zoxide init bash)"
