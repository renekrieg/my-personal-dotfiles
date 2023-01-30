# Set Variables
export NULLCMD=bat
export DOTFILES="$HOME/.dotfiles"
export HOMEBREW_BUNDLE_FILE="$DOTFILES/Brewfile"
export HOMEBREW_CASK_OPTS="--no-quarantine"
# Syntax highlighting for man pages using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options

# Adjust History Variables & Options
[[ -z $HISTFILE ]] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000 # Session Memory Limit
SAVEHIST=100000 # File Memory Limit
setopt histNoStore
setopt extendedHistory # extended history format with timing info.
setopt histIgnoreDups
unsetopt appendHistory # explicit and unnecessary
setopt incAppendHistoryTime

# Line Editor Options (Completion, Menu, Directory, etc.)
# autoMenu & autoList are on by default
setopt autoCd
setopt globDots

# Create Aliases
alias ls='exa'
alias exa='exa -laFh --git'
alias trail='<<<${(F)path}'
alias ftrail='<<<${(F)fpath}'
#alias rm=trash
alias man=batman
alias bbd="brew bundle dump --force --describe"
# Load history into shell (shareHistory alternative)
alias lh='fc -RI; echo "loaded and showing..."; history;'

# Customize Prompt(s)
# PROMPT='
#%1~%L %# '

RPROMPT='%*'

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins
source <(antibody init)
antibody bundle < "$DOTFILES/antibody_plugins"


# Load "New" Completion System
autoload -Uz compinit && compinit