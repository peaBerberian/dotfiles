#!/bin/bash

# ---- ls alias ----

alias ll='ls -alF'
alias lt='ls -altcF'
alias la='ls -A'
alias l='ls -CF'

# --------

# ---- config files ----

alias vimedit='vim ~/.vimrc'
alias nvimedit='vim ~/.config/nvim/init.vim'
alias bashedit='vim ~/.bashrc'
alias zshedit='vim ~/.zshrc'

# --------

# ---- VI ----

# launch gvim -v instead of vim (with system clipboard)
alias vi='gvim -v'
alias vim='gvim -v'

# launch neovim
alias n='nvim'

# --------

# ---- git alias ----
#
alias gc='git checkout'

alias ga='git add'
alias gaa='git add --all'

alias gd='git diff'

alias gm='git commit -m'
alias gma='git commit -a -m'

alias gp='git push origin'
alias gpp='git push -f origin'

alias gpt='git pull origin'
alias gptt='git pull -f origin'

alias gs='git status -sb'
alias gss='git status'

alias gr='git rebase'
alias gri='git rebase -i'
alias grc='git rebase --continue'

################

# --------

######## NPM (node) ########

alias nr="npm run"

################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
