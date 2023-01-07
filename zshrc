# Set Variables
export NULLCMD=bat
export DOTFILES="$HOME/.dotfiles"
export HOMEBREW_BUNDLE_FILE="$DOTFILES/Brewfile"
export HOMEBREW_CASK_OPTS="--no-quarantine"
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Create Aliases
alias ls='exa'
alias exa='exa -laFh --git'
alias trail='<<<${(F)path}'
alias ftrail='<<<${(F)fpath}'
alias rm=trash
alias man=batman
alias bbd="brew bundle dump --force --describe"

# Customize Prompt(s)
# PROMPT='
#%1~%L %# '

RPROMPT='%*'
