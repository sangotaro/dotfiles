case "${OSTYPE}" in
darwin*)
  export BASH_SILENCE_DEPRECATION_WARNING=1
  test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
esac

alias ls="ls -G"
alias ll='ls -l'
alias la='ls -lA'

export PS1="[\u@\h \W]\\$"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

BREW_PREFIX=$(brew --prefix)

[[ -r "${BREW_PREFIX}/etc/profile.d/bash_completion.sh" ]] && . "${BREW_PREFIX}/etc/profile.d/bash_completion.sh"

if [[ -d "${BREW_PREFIX}/etc/bash_completion.d" ]]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUPSTREAM=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWSTASHSTATE=1
  PS1='\[\033[0m\][\[\033[38;05;41m\]\u@\h \[\033[38;05;45m\]\w\[\033[0m\]] \[\033[38;05;203m\]$(__git_ps1 "(%s)") \[\033[0m\]`date +"%Y/%m/%d %H:%M:%S"` \n\\$ '

  if which kubectl > /dev/null; then kubectl completion bash > "${BREW_PREFIX}/etc/bash_completion.d/kubectl"; fi
fi

# GNU
# export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
# export PATH=$(brew --prefix diffutils)/bin:$PATH
# export PATH=$(brew --prefix findutils)/libexec/gnubin:$PATH
# export PATH=$(brew --prefix gawk)/bin:$PATH
# export PATH=$(brew --prefix grep)/bin:$PATH
# export PATH=$(brew --prefix gnu-sed)/libexec/gnubin:$PATH
# export PATH=$(brew --prefix gzip)/bin:$PATH

# Java
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
export JAVA_HOME=`/usr/libexec/java_home`

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "${BREW_PREFIX}/opt/nvm/nvm.sh" ] && . "${BREW_PREFIX}/opt/nvm/nvm.sh"  # This loads nvm
[ -s "${BREW_PREFIX}/opt/nvm/etc/bash_completion" ] && . "${BREW_PREFIX}/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
eval "`npm completion`"
source "$HOME/dotfiles/nvm.bash"

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# export PATH="./.bundle/bin:$PATH"

# Python
export PATH="${BREW_PREFIX}/opt/python@3.9/libexec/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
export PIPENV_VENV_IN_PROJECT=true

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# MySQL
export PATH="${BREW_PREFIX}/opt/mysql-client/bin:$PATH"

# psql
export PATH="/usr/local/opt/libpq/bin:$PATH"


function change_gcp_project() {
  gcloud config configurations activate $(gcloud config configurations list | awk '{print $1}' | grep -v NAME | peco)
}
