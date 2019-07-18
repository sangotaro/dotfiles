export PS1="[\u@\h \W]\\$"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

if [[ -d /usr/local/etc/bash_completion.d ]]; then
  for file in /usr/local/etc/bash_completion.d/*; do
    source $file
  done

  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUPSTREAM=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWSTASHSTATE=1
  PS1='\[\033[0m\][\[\033[38;05;41m\]\u@\h \[\033[38;05;45m\]\w\[\033[0m\]] \[\033[38;05;203m\]$(__git_ps1 "(%s)") \[\033[0m\]`date +"%Y/%m/%d %H:%M:%S"` \n\\$ '
fi

case "${OSTYPE}" in
darwin*)
  # GNU
  export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
  export PATH=$(brew --prefix diffutils)/bin:$PATH
  export PATH=$(brew --prefix findutils)/libexec/gnubin:$PATH
  export PATH=$(brew --prefix gawk)/bin:$PATH
  export PATH=$(brew --prefix grep)/bin:$PATH
  export PATH=$(brew --prefix gnu-sed)/libexec/gnubin:$PATH
  export PATH=$(brew --prefix gzip)/bin:$PATH

  # PHP
  export PATH="/usr/local/opt/php@7.1/bin:$PATH"
  export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

  # Node.js
  export PATH=$HOME/.nodebrew/current/bin:$PATH
  export PATH="./node_modules/.bin:$PATH"

  # Python
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"

  # Ruby
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
  export PATH="./.bundle/bin:$PATH"

  # Java
  export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
  export JAVA_HOME=`/usr/libexec/java_home`

  # Go
  export GOPATH=~/go
  export PATH=$PATH:/usr/local/opt/go/libexec/bin

esac

# .bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# .bashrc.local
[[ -f ~/.bashrc.local ]] && . ~/.bashrc.local
