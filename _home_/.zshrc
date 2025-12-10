# ~/.zshrc

# ---- Env vars ----

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.npm/bin:$PATH
export GPG_TTY=$(tty)
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000000
export SAVEHIST=100000000

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

# ----

# ---- zsh options ----

setopt HIST_IGNORE_SPACE      # Don't save when first character is space
setopt SHARE_HISTORY          # Share history between sessions
setopt HIST_IGNORE_DUPS       # Don't record duplicates
setopt HIST_FIND_NO_DUPS      # Don't show duplicates in search
setopt HIST_REDUCE_BLANKS     # Remove extra blanks

setopt AUTO_MENU              # Show completion menu on tab
setopt COMPLETE_IN_WORD       # Complete from both ends of word

# ----

# ---- Spawning new terminal instances in the current working directory ----

_urlencode() {
  local length="${#1}"
  for (( i = 0; i < length; i++ )); do
    local c="${1:$i:1}"
    case $c in
      %) printf '%%%02X' "'$c" ;;
      *) printf "%s" "$c" ;;
    esac
  done
}

osc7_cwd() {
  printf '\e]7;file://%s%s\e\\' "$HOSTNAME" "$(_urlencode "$PWD")"
}

autoload -Uz add-zsh-hook
add-zsh-hook -Uz chpwd osc7_cwd

# ----

autoload -Uz compinit && compinit

# ---- Auto-Suggest ----

# Enable zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Check common plugin locations
_zsh_autosuggest_locations=(
  /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh  # Arch/Fedora
  /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh              # Debian/Ubuntu
  /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh     # macOS Homebrew (Apple Silicon)
  /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh        # macOS Homebrew (Intel) / FreeBSD
  $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh              # Manual install
)

for location in $_zsh_autosuggest_locations; do
  if [[ -f $location ]]; then
    source $location
    break
  fi
done
unset _zsh_autosuggest_locations

# ----

# Setting up usual tools:
command -v fzf >/dev/null 2>&1 && source <(fzf --zsh)
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh)"
# command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"
command -v oh-my-posh >/dev/null 2>&1 && eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/config.toml)"
command -v atuin >/dev/null 2>&1 && eval "$(atuin init zsh --disable-up-arrow)"
command -v mise >/dev/null 2>&1 && eval "$(mise activate zsh)"
command -v jj >/dev/null 2>&1 && eval "$(jj util completion zsh)"

## Common alias definitions for all bash-compatible shells
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
