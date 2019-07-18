alias ls="ls --color"
alias ll='ls -l'
alias la='ls -lA'

alias yarn="/usr/local/bin/yarn"

# Initialize sshx
if which sshx > /dev/null; then eval "$(sshx init -)"; fi
