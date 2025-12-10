# ~/.bashrc

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.npm/bin:$PATH
export GPG_TTY=$(tty)
export HISTFILE=$HOME/.bash_history
export HISTSIZE=100000000
export HISTFILESIZE=100000000
export HISTCONTROL=ignoredups:erasedups

[[ -f ~/.env.sh ]] && . ~/.env.sh

# Pager config
if command -v less >/dev/null 2>&1; then
    export LESS='-R --mouse --incsearch'
    export PAGER='less -S -R -+X --incsearch'
elif command -v more >/dev/null 2>&1; then
    export PAGER=more
fi

# Editor
if command -v nvim >/dev/null 2>&1; then
    export EDITOR=nvim
elif command -v vim >/dev/null 2>&1; then
    export EDITOR=vim
else
    export EDITOR=vi # POSIX stuff
fi

# Wayland configuration (only set if on Wayland)
if [[ "$XDG_SESSION_TYPE" == "wayland" ]]; then
    export MOZ_ENABLE_WAYLAND=1
    export ELECTRON_OZONE_PLATFORM_HINT=wayland
    export QT_QPA_PLATFORM=wayland
fi

# If not running interactively, stop here
[[ $- != *i* ]] && return

# By default, prompt will be e.g. `[alice@laptop ~/projects]$`
# No, I don't really call myself alice ;)
PS1='[\u@\h \W]\$ '

command -v fzf >/dev/null 2>&1 && eval "$(fzf --bash)"
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init bash)"
# command -v starship >/dev/null 2>&1 && eval "$(starship init bash)"
command -v oh-my-posh >/dev/null 2>&1 && eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/config.toml)"
command -v atuin >/dev/null 2>&1 && eval "$(atuin init bash --disable-up-arrow)"
command -v mise >/dev/null 2>&1 && eval "$(mise activate bash)"
command -v jj >/dev/null 2>&1 && eval "$(jj util completion bash)"

## Common alias definitions for all bash-compatible shells
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
