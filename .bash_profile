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
  # Node.js
  export PATH=$HOME/.nodebrew/current/bin:$PATH
  export PATH="./node_modules/.bin:$PATH"

  # Python
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"

  # Ruby
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

  # Java
  export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
  export JAVA_HOME=`/usr/libexec/java_home`

  # Go
  export GOPATH=~/go
  export PATH=$PATH:/usr/local/opt/go/libexec/bin

  # android-ndk
  export NDK_ROOT="/usr/local/opt/android-ndk"
  export PATH=$PATH:$NDK_ROOT

  # android-sdk
  export ANDROID_SDK_ROOT="/usr/local/opt/android-sdk"
  export PATH=$PATH:"$ANDROID_SDK_ROOT/tools":"$ANDROID_SDK_ROOT/platform-tools"

  # Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
  export COCOS_CONSOLE_ROOT=$HOME/work/cocos/cocos2d-x-3.3/tools/cocos2d-console/bin
  export PATH=$COCOS_CONSOLE_ROOT:$PATH

  # Add environment variable COCOS_X_ROOT for cocos2d-x
  export COCOS_X_ROOT=/Users/A12728/work/cocos/cocos2d-x-3.3
  export PATH=$COCOS_X_ROOT:$PATH

  # Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
  export COCOS_TEMPLATES_ROOT=/Users/A12728/work/cocos/cocos2d-x-3.3/templates
  export PATH=$COCOS_TEMPLATES_ROOT:$PATH

  # Add environment variable ANT_ROOT for cocos2d-x
  export ANT_ROOT=/usr/local/opt/ant/libexec/bin
  export PATH=$ANT_ROOT:$PATH
esac

# .bashrc
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
