set fish_greeting
set -gx PATH $HOME/bin $HOME/.local/bin /usr/local/bin $HOME/.cargo/bin $HOME/.npm/bin $PATH
set -gx NODE_PATH "$HOME/.npm/lib/node_modules:$NODE_PATH"
set -gx GPG_TTY (tty)
set -gx LESS -R --mouse --incsearch
set -gx PAGER less -S -R -+X --incsearch
set -gx EDITOR nvim
set -gx MOZ_ENABLE_WAYLAND 1
set -gx ELECTRON_OZONE_PLATFORM_HINT wayland
set -gx QT_QPA_PLATFORM wayland

fish_vi_key_bindings

# ls aliases

# Old, using `lsd`
# abbr l 'lsd -a --group-directories-first'
# abbr ll 'lsd -lgah --git --group-directories-first'
# abbr lt 'lsd -lgah --sort time --reverse --git'

# Newer try, using `eza`
abbr l 'eza -a --group-directories-first'
abbr ll 'eza -lgah --git --group-directories-first'
abbr lt 'eza -la --group -h -s modified --git'

# launch neovim
abbr n nvim

# git aliases
abbr gc 'git checkout'
abbr ga 'git add'
abbr gaa 'git add --all'
abbr gd 'git diff'
abbr gl 'git log --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
abbr gla 'git log --all --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
# list every branch by commit date ascending order
abbr glb "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
function gcb
    set BRANCH $(git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | fzf) && git checkout $BRANCH
end
# list every branch by commit date ascending order with last associated commit message displayed
abbr glbc "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
abbr -a gm 'git commit'
abbr -a gmm 'git commit -m'
abbr -a gmn 'git commit --no-verify'
abbr -a gma 'git commit --amend'
abbr -a gmna 'git commit --no-verify --amend'
abbr -a gs 'git status -sb'
abbr -a gri 'git rebase -i'
abbr -a grc 'git rebase --continue'
abbr -a gcfd 'git clean -fd'
abbr -a gp 'git push origin (git rev-parse --abbrev-ref HEAD)'
abbr -a gpp 'git push --force-with-lease origin (git rev-parse --abbrev-ref HEAD)'
abbr -a gpt 'git pull origin (git rev-parse --abbrev-ref HEAD)'
abbr -a gptt 'git pull -f origin (git rev-parse --abbrev-ref HEAD)'
abbr -a grh 'git reset --hard origin/(git rev-parse --abbrev-ref HEAD)'
abbr -a ni "npm install"
abbr -a nr "npm run"
abbr -a y yarn

function starship_transient_prompt_func
    starship module time
    starship module character
end

zoxide init fish | source
starship init fish | source
atuin init fish --disable-up-arrow | source
enable_transience
