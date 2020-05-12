alias ls="ls -G"
alias ll='ls -l'
alias la='ls -lA'

BREW_PREFIX=$(brew --prefix)

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "${BREW_PREFIX}/opt/nvm/nvm.sh" ] && . "${BREW_PREFIX}/opt/nvm/nvm.sh"  # This loads nvm
[ -s "${BREW_PREFIX}/opt/nvm/etc/bash_completion" ] && . "${BREW_PREFIX}/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
eval "`npm completion`"
source "$HOME/dotfiles/nvm.bash"

# MySQL
export PATH="${BREW_PREFIX}/opt/mysql-client/bin:$PATH"
