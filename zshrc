# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Create Aliases
alias ls='ls -lAfh'

# Customize Prompt(s)
# PROMPT='
#%1~%L %# '

RPROMPT='%*'
