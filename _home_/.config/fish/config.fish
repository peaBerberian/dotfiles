set fish_greeting
set -gx PATH $HOME/bin $HOME/.local/bin /usr/local/bin $HOME/.cargo/bin $HOME/.npm/bin $PATH
set -gx NODE_PATH "$HOME/.npm/lib/node_modules:$NODE_PATH"
set -gx GPG_TTY (tty)
set -gx PAGER less -S -R -+X
set -gx LESS -R --mouse
set -gx EDITOR nvim
set -gx MOZ_ENABLE_WAYLAND 1
set -gx ELECTRON_OZONE_PLATFORM_HINT wayland
set -gx QT_QPA_PLATFORM wayland

fish_vi_key_bindings

# ls aliases
alias ll 'lsd -lgah --git --group-directories-first'
alias la 'lsd -a --group-directories-first'
alias lt 'lsd -lgah --sort time --reverse --git'

# launch neovim
alias n nvim

# git aliases
alias gc 'git checkout'
alias ga 'git add'
alias gaa 'git add --all'
alias gam 'git commit -a -m'
alias gd 'git diff'
alias gl 'git log --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
alias gla 'git log --all --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
# list every branch by commit date ascending order
alias glb "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
function gcb
    set BRANCH $(git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | fzf) && git checkout $BRANCH
end
# list every branch by commit date ascending order with last associated commit message displayed
alias glbc "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gm 'git commit'
alias gmm 'git commit -m'
alias gmn 'git commit --no-verify'
alias gma 'git commit --amend'
alias gmna 'git commit --no-verify --amend'
alias gs 'git status -sb'
alias gss 'git status'
alias gr 'git rebase'
alias gri 'git rebase -i'
alias grc 'git rebase --continue'
alias gcfd 'git clean -fd'
function gp
    git push origin (git rev-parse --abbrev-ref HEAD)
end
function gpn
    git push --no-verify origin (git rev-parse --abbrev-ref HEAD)
end
function gpp
    git push --force-with-lease origin (git rev-parse --abbrev-ref HEAD)
end
function gppn
    git push --force-with-lease --no-verify origin (git rev-parse --abbrev-ref HEAD)
end
function gpt
    git pull origin (git rev-parse --abbrev-ref HEAD)
end
function gptt
    git pull -f origin (git rev-parse --abbrev-ref HEAD)
end
function grh
    git reset --hard origin/(git rev-parse --abbrev-ref HEAD)
end

# npm alias
alias nr "npm run"

function starship_transient_prompt_func
    starship module time
    starship module character
end

zoxide init fish | source
starship init fish | source
enable_transience

if status is-interactive
    # Commands to run in interactive sessions can go here
    fzf --fish | source
end
