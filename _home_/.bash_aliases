#!/bin/bash

alias c='cd'

# ---- ls alias ----

alias ll='exa -lgah --git --group-directories-first'
alias la='exa -a --group-directories-first'
alias lt='exa -lgah --sort oldest --git'

# --------

# ---- config files ----

alias vimedit='vim ~/.vimrc'
alias nvimedit='vim ~/.config/nvim/init.vim'
alias bashedit='vim ~/.bashrc'
alias zshedit='vim ~/.zshrc'

# --------

# ---- VI ----

# launch gvim -v instead of vim (with system clipboard)
alias v='gvim -v'
alias vi='gvim -v'
alias vim='gvim -v'

# launch neovim
alias n='nvim'

# --------

# ---- git alias ----

alias gc='git checkout'

alias ga='git add'
alias gaa='git add --all'
alias gam='git commit -a -m'

alias gd='git diff'

alias gl='git log --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
alias gla='git log --all --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'

alias gm='git commit -m'
alias gma='git commit --amend'

alias gp='git push origin'
alias gpp='git push --force-with-lease origin'

alias gpt='git pull origin'
alias gptt='git pull -f origin'

alias gs='git status -sb'
alias gss='git status'

alias gr='git rebase'
alias gri='git rebase -i'
alias grc='git rebase --continue'

# --------

# ---- yay alias ----

alias yu="curl -s https://www.archlinux.org/feeds/news/ | xmllint --xpath //item/title\ \|\ //item/pubDate /dev/stdin | sed -r -e \"s:<title>([^<]*?)</title><pubDate>([^<]*?)</pubDate>:\2\t\1\n:g\" && yay -Syu --combinedupgrade"

# ---- npm alias ----

alias nr="npm run"

# --------

# ---- colors ----

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
