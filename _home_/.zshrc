# ZSH Configuration file #######################################################

## General Configuration #######################################################

# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each time
# that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in
# ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vi-mode git gittools gitfast node sudo)

source $ZSH/oh-my-zsh.sh



## Editor configuration ########################################################

# Preferred editor for local and remote sessions
export EDITOR='vim'
export PAGER='less'

for suffix in c cc cxx go graphql h html js json jsx md py rb rs ts tsx vim \
  yml mpd Manifest
do
  alias -s $suffix=$EDITOR
done

for suffix in txt log
do
  alias -s $suffix=$PAGER
done



## Mapping #####################################################################

# Home -> beginning of line
bindkey '\eOH'  beginning-of-line

# End -> end of line
bindkey '\eOF'  end-of-line

# SUPPR -> delete character
bindkey "\e[3~" delete-char

# Ctrl+R -> history search
bindkey "^R" history-incremental-search-backward



## Plugins #####################################################################

. ~/.zplug/init.zsh

zplug junegunn/fzf
zplug zsh-users/zsh-autosuggestions
zplug zsh-users/zsh-completions, lazy:true
zplug zsh-users/zsh-syntax-highlighting
zplug zsh-users/zsh-history-substring-search

if ! zplug check
then
  zplug install
fi

zplug load



## Scripts #####################################################################

# Call common shell rc script
if [ -f ~/.shellrc ]; then
  . ~/.shellrc
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GPG_TTY=$(tty)

# added by travis gem
[ -f /home/oscar/.travis/travis.sh ] && source /home/oscar/.travis/travis.sh
