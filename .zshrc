# Activate zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Activate zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Activate Starship
eval "$(starship init zsh)"

# ------------------------------------------------------------------------------
# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# ---- Zoxide (better cd) ----
if type zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi

# Create Aliases
. ~/.zsh_aliases
# Create Functions
. ~/.zsh_functions