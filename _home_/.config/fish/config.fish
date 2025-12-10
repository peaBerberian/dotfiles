# ~/.config/fish/config.fish

set fish_greeting

# Environment variables
set -gx PATH $HOME/bin $HOME/.local/bin /usr/local/bin $HOME/.cargo/bin $HOME/.npm/bin $PATH
set -gx GPG_TTY (tty)

if test -f ~/.env.fish
    source ~/.env.fish
end

# Use Vi keybindings, as god [probably] intended
fish_vi_key_bindings

if test "$XDG_SESSION_TYPE" = wayland
    set -gx MOZ_ENABLE_WAYLAND 1
    set -gx ELECTRON_OZONE_PLATFORM_HINT wayland
    set -gx QT_QPA_PLATFORM wayland
end

# Pager config
if type -q less
    set -gx LESS '-R --mouse --incsearch'
    set -gx PAGER 'less -S -R -+X --incsearch'
else if type -q more
    set -gx PAGER more
end

# Editor
if type -q nvim
    set -gx EDITOR nvim
    abbr n nvim
else if type -q vim
    set -gx EDITOR vim
else
    # WTH, no Vim, yet fish? At least POSIX is standard, even busybox machines have one
    set -gx EDITOR vi
end

# Starship transient prompt
# function starship_transient_prompt_func
#     starship module time
#     starship module character
# end

# Remove the mode indicator
function fish_mode_prompt
    # Intentionally left blank to hide the [I] [N] indicators
end

# Initialize tools
type -q zoxide && zoxide init fish | source
# type -q starship && starship init fish | source
type -q oh-my-posh && oh-my-posh init fish --config ~/.config/oh-my-posh/config.toml | source
type -q atuin && atuin init fish --disable-up-arrow | source
type -q mise && mise activate fish | source
type -q jj && jj util completion fish >~/.config/fish/completions/jj.fish

# Enable starship transience
# type -q starship && enable_transience

# ls aliases - auto-detect available tool
if type -q eza
    abbr l 'eza -a --group-directories-first'
    abbr ll 'eza -lgah --git --group-directories-first'
    abbr lt 'eza -la --group -h -s modified --git'
else if type -q lsd
    abbr l 'lsd -a --group-directories-first'
    abbr ll 'lsd -lgah --git --group-directories-first'
    abbr lt 'lsd -lgah --sort time --reverse --git'
else
    # Fallback to regular ls with color
    abbr l 'ls -A --color=auto --group-directories-first'
    abbr ll 'ls -lAh --color=auto --group-directories-first'
    abbr lt 'ls -lAht --color=auto'
end

# Git aliases
if type -q git
    abbr gc 'git checkout'
    abbr ga 'git add'
    abbr gaa 'git add --all'
    abbr gd 'git diff'
    abbr gl 'git log --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
    abbr gla 'git log --all --oneline --graph --pretty=format:"%C(3)%h %C(75)%ad %C(41)%an%C(auto)%d %s" --date=short'
    abbr glb "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
    abbr glbc "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
    abbr gm 'git commit'
    abbr gmm 'git commit -m'
    abbr gmn 'git commit --no-verify'
    abbr gma 'git commit --amend'
    abbr gmna 'git commit --no-verify --amend'
    abbr gs 'git status -sb'
    abbr gri 'git rebase -i'
    abbr grc 'git rebase --continue'
    abbr gcfd 'git clean -fd'
    abbr gp 'git push origin (git rev-parse --abbrev-ref HEAD)'
    abbr gpp 'git push --force-with-lease origin (git rev-parse --abbrev-ref HEAD)'
    abbr gpt 'git pull origin (git rev-parse --abbrev-ref HEAD)'
    abbr gptt 'git pull -f origin (git rev-parse --abbrev-ref HEAD)'
    abbr grh 'git reset --hard origin/(git rev-parse --abbrev-ref HEAD)'

    if type -q fzf
        # Interactive branch checkout with fzf
        function gcb
            set BRANCH (git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | fzf)
            and git checkout $BRANCH
        end
    end
end

if type -q jj
    abbr jl 'jj log --limit 20 --no-pager --reversed -T \'separate(" ", change_id.shortest(8), description.first_line(), bookmarks, author.name())\''
end

# Node/JS aliases
if type -q npm
    abbr ni 'npm install'
    abbr nr 'npm run'
end
if type -q yarn
    abbr y yarn
end
