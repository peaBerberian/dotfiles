set -gx PATH $HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.npm/bin:$PATH
set -gx NODE_PATH "$HOME/.npm/lib/node_modules:$NODE_PATH"
set -gx GPG_TTY (tty)
set -gx EDITOR nvim
set -gx MOZ_ENABLE_WAYLAND 1
set -gx MCFLY_KEY_SCHEME vim
set -gx MCFLY_FUZZY 2

fish_vi_key_bindings

# ls aliases
alias ll 'lsd -lgah --git --group-directories-first'
alias la 'lsd -a --group-directories-first'
alias lt 'lsd -lgah --sort time --reverse --git'

# launch neovim
alias n 'nvim'

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
# list every branch by commit date ascending order with last associated commit message displayed
alias glbc "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gm 'git commit'
alias gmm 'git commit -m'
alias gmn 'git commit --no-verify'
alias gma 'git commit --amend'
alias gmna 'git commit --no-verify --amend'
alias gp 'git push origin'
alias gpn 'git push --no-verify origin'
alias gpp 'git push --force-with-lease origin'
alias gpt 'git pull origin'
alias gptt 'git pull -f origin'
alias gs 'git status -sb'
alias gss 'git status'
alias gr 'git rebase'
alias gri 'git rebase -i'
alias grc 'git rebase --continue'

# npm alias
alias nr "npm run"

zoxide init fish | source
starship init fish | source
mcfly init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
