#!/bin/bash

if [ -f ~/git_shortcuts.sh ]; then
  alias g='~/git_shortcuts.sh'
fi

# ---- ls alias ----

# Old, using `lsd`
# abbr l 'lsd -a --group-directories-first'
# abbr ll 'lsd -lgah --git --group-directories-first'
# abbr lt 'lsd -lgah --sort time --reverse --git'

# Newer try, using `eza`
abbr l 'eza -a --group-directories-first'
abbr ll 'eza -lgah --git --group-directories-first'
abbr lt 'eza -la --group -h -s modified --git'

# --------

# ---- VI ----

# launch vim instead of vi
alias v='vim'
alias vi='vim'

# launch neovim
alias n='nvim'
alias l='NVIM_APPNAME=lazyvim n'

# --------

# ---- git alias ----

alias gc='git checkout'
alias ga='git add'
alias gaa='git add --all'
alias gd='git diff'

# Prettified log for the current branch
alias gl='git log --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'

# Prettified log for all branches
alias gla='git log --all --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'

# list every branch by commit date ascending order
alias glb="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
gcb() {
  BRANCH=$(git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | fzf) && git checkout ${BRANCH}
}

# list every branch by commit date ascending order with last associated commit message displayed
alias glbc="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias gm='git commit'
alias gmm='git commit -m'
alias gmn='git commit --no-verify'
alias gma='git commit --amend'
alias gmna='git commit --no-verify --amend'
alias gs='git status -sb'
alias gri='git rebase -i'
alias grc='git rebase --continue'
alias gcfd='git clean -fd'
gp() {
  git push origin $(git rev-parse --abbrev-ref HEAD)
}
gpp() {
  git push --force-with-lease origin $(git rev-parse --abbrev-ref HEAD)
}
gpt() {
  git pull origin $(git rev-parse --abbrev-ref HEAD)
}
gptt() {
  git pull -f origin $(git rev-parse --abbrev-ref HEAD)
}
grh() {
  git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)
}

# --------

# ---- npm alias ----

alias nr="npm run"

# --------
