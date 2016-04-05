alias ls="ls --color"
alias ll='ls -l'
alias la='ls -lA'

# Initialize sshx
if which sshx > /dev/null; then eval "$(sshx init -)"; fi
