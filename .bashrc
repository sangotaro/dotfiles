export PS1="[\u@\h \W]\\$"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
alias ls="ls -G"

case "${OSTYPE}" in
darwin*)
  # Boxen
  [ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

  # android-ndk
  NDK_ROOT="/opt/boxen/homebrew/Cellar/android-ndk/r9d"
  PATH=$PATH:$NDK_ROOT
  export NDK_ROOT=$NDK_ROOT

  # android-sdk
  ANDROID_SDK_ROOT="/opt/boxen/homebrew/Cellar/android-sdk/22.6.2"
  PATH=$PATH:"$ANDROID_SDK_ROOT/tools":"$ANDROID_SDK_ROOT/platform-tools"
esac
