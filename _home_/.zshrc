export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.npm/bin:$PATH
export NODE_PATH="$HOME/.npm/lib/node_modules:$NODE_PATH"
export GPG_TTY=$(tty)
export EDITOR=nvim
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000000
export SAVEHIST=100000000
setopt HIST_IGNORE_SPACE
export MOZ_ENABLE_WAYLAND=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add z
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

## Alias definitions.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# -- Spawning new terminal instances in the current working directory --

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

# Enable zsh-autosuggestions (script needs to be installed)
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.fzf/shell/key-bindings.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
