export PS1="[\u@\h \W]\\$"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
alias ls="ls -G"

case "${OSTYPE}" in
darwin*)
  # Boxen
  [ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

  # android-ndk
  export NDK_ROOT="/opt/boxen/homebrew/opt/android-ndk"
  export PATH=$PATH:$NDK_ROOT

  # android-sdk
  export ANDROID_SDK_ROOT="/opt/boxen/homebrew/opt/android-sdk"
  export PATH=$PATH:"$ANDROID_SDK_ROOT/tools":"$ANDROID_SDK_ROOT/platform-tools"
esac
