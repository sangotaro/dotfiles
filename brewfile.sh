#!/bin/sh

# Update Homebrew
brew update

# Upgrade Formula
brew upgrade

# Add Repository
brew tap caskroom/cask
brew tap sanemat/font

# Packages
#brew install android-sdk
#brew install android-ndk
#brew install ant
#brew install apktool
#brew install automake
#brew install composer
#brew install coreutils
#brew install curl
#brew install diffutils
#brew install dnsmasq
#brew install findutils
#brew install gawk
brew install git
#brew install gnu-sed
#brew install go
#brew install gradle
#brew install grep --with-default-names
#brew install gzip
#brew install imagemagick
brew install jq
brew install macvim -- --override-system-vim
#brew install maven
#brew install mysql --client-only
#brew install nodebrew
brew install nvm
#brew install pkg-config
#brew install pngquant
#brew install rbenv
brew install ricty
#brew install ruby-build
#brew install rename
#brew install squid
brew install tree
brew install tig
#brew install tmux
#brew install yarn
brew install wget

# Cask Packages
#brew cask install diskwave
#brew cask install dropbox
#brew cask install firefox
#brew cask install genymotion
#brew cask install google-chrome
#brew cask install google-japanese-ime
#brew cask install iterm2
#brew cask install java
#brew cask install java7
#brew cask install sequel-pro
#brew cask install sourcetree
#brew cask install sublime-text
#brew cask install xquartz

# Remove outdated packages
brew cleanup
