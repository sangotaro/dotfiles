export PS1="[\u@\h \W]\\$"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
export PATH=$PATH:$HOME/.nodebrew/current/bin

alias ls="ls -G"

case "${OSTYPE}" in
darwin*)
  # android-ndk
  export NDK_ROOT="/usr/local/opt/android-ndk"
  export PATH=$PATH:$NDK_ROOT

  # android-sdk
  export ANDROID_SDK_ROOT="/usr/local/opt/android-sdk"
  export PATH=$PATH:"$ANDROID_SDK_ROOT/tools":"$ANDROID_SDK_ROOT/platform-tools"
esac
