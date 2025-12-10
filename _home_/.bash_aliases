#!/bin/bash

# ~/.bash_aliases

# ls aliases - auto-detect available tool
if command -v eza >/dev/null 2>&1; then
    alias l='eza -a --group-directories-first'
    alias ll='eza -lgah --git --group-directories-first'
    alias lt='eza -la --group -h -s modified --git'
elif command -v lsd >/dev/null 2>&1; then
    alias l='lsd -a --group-directories-first'
    alias ll='lsd -lgah --git --group-directories-first'
    alias lt='lsd -lgah --sort time --reverse --git'
else
    # Fallback to regular ls with color
    alias l='ls -A --color=auto --group-directories-first'
    alias ll='ls -lAh --color=auto --group-directories-first'
    alias lt='ls -lAht --color=auto'
fi

# Editor
if command -v nvim >/dev/null 2>&1; then
    alias n='nvim'
fi

# Git aliases
if command -v git >/dev/null 2>&1; then
    alias gc='git checkout'
    alias ga='git add'
    alias gaa='git add --all'
    alias gd='git diff'
    alias gl='git log --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
    alias gla='git log --all --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
    alias glb="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
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
    alias gp='git push origin $(git rev-parse --abbrev-ref HEAD)'
    alias gpp='git push --force-with-lease origin $(git rev-parse --abbrev-ref HEAD)'
    alias gpt='git pull origin $(git rev-parse --abbrev-ref HEAD)'
    alias gptt='git pull -f origin $(git rev-parse --abbrev-ref HEAD)'
    alias grh='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'

    # Interactive branch checkout with fzf
    if command -v fzf >/dev/null 2>&1; then
        gcb() {
            local branch
            branch=$(git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | fzf)
            [[ -n "$branch" ]] && git checkout "$branch"
        }
    fi
fi

# Jujutsu aliases
if command -v jj >/dev/null 2>&1; then
    alias jl='jj log --limit 20 --no-pager --reversed -T "separate(\" \", change_id.shortest(8), description.first_line(), bookmarks, author.name())"'
fi

# Node/JS aliases
if command -v npm >/dev/null 2>&1; then
    alias ni='npm install'
    alias nr='npm run'
fi

if command -v yarn >/dev/null 2>&1; then
    alias y='yarn'
fi
