#!/bin/bash

alias c='cd'

if [ -f ~/git_shortcuts.sh ]; then
  alias g='~/git_shortcuts.sh'
fi

# ---- ls alias ----

alias ll='exa -lgah --git --group-directories-first'
alias la='exa -a --group-directories-first'
alias lt='exa -lgah --sort newest --git'

alias lal='exa -lgah --color always --git --group-directories-first | less'
alias lll='exa -lgah --color always --git --group-directories-first | less'
alias ltl='exa -lgah --color always --sort oldest --git | less'

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
alias gdn='git diff --no-ext-diff'

# Prettified log for the current branch
alias gl='git log --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'

# Prettified log for all branches
alias gla='git log --all --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'

# list every branch by commit date ascending order
alias glb="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

# list every branch by commit date ascending order with last associated commit message displayed
alias glbc="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias gm='git commit'
alias gmm='git commit -m'
alias gmn='git commit --no-verify'
alias gma='git commit --amend'
alias gmna='git commit --no-verify --amend'

alias gp='git push origin'
alias gpn='git push --no-verify origin'
alias gpp='git push --force-with-lease origin'

alias gpt='git pull origin'
alias gptt='git pull -f origin'

alias gs='git status -sb'
alias gss='git status'

alias gr='git rebase'
alias gri='git rebase -i'
alias grc='git rebase --continue'

# --------

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
