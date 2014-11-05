export PS1="[\u@\h \W]\\$"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

case "${OSTYPE}" in
darwin*)
  # Node.js
  export PATH=$HOME/.nodebrew/current/bin:$PATH
  export PATH="./node_modules/.bin:$PATH"

  # Python
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"

  # Java
  export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
  export JAVA_HOME=`/usr/libexec/java_home`

  # android-ndk
  export NDK_ROOT="/usr/local/opt/android-ndk"
  export PATH=$PATH:$NDK_ROOT

  # android-sdk
  export ANDROID_SDK_ROOT="/usr/local/opt/android-sdk"
  export PATH=$PATH:"$ANDROID_SDK_ROOT/tools":"$ANDROID_SDK_ROOT/platform-tools"

  # Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
  export COCOS_CONSOLE_ROOT=/Users/shotaro/work/cocos2d-x/cocos2d-x-3.2/tools/cocos2d-console/bin
  export PATH=$COCOS_CONSOLE_ROOT:$PATH

  # Add environment variable ANT_ROOT for cocos2d-x
  export ANT_ROOT=/usr/local/Cellar/ant/1.9.4/libexec/bin
  export PATH=$ANT_ROOT:$PATH
esac

# .bashrc
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
