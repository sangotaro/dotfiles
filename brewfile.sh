#!/bin/sh

# Update Homebrew
brew update

# Upgrade Formula
brew upgrade

# Brew Cask
brew install caskroom/cask/brew-cask

# Add Repository
brew tap caskroom/versions
brew tap homebrew/versions
brew tap homebrew/binary
brew tap sanemat/font

# Packages
brew install android-sdk
brew install android-ndk
brew install ant
brew install apktool
brew install automake
brew install curl
brew install dnsmasq
brew install git
brew install go
brew install imagemagick
brew install jq
brew install macvim --override-system-vim
brew install mercurial
brew install nodebrew
brew install pkg-config
brew install pngquant
brew install pyenv
brew install pyenv-virtualenv
brew install rbenv
brew install ricty
brew install ruby-build
brew install rbenv-bundler
brew install rbenv-binstubs
brew install rename
brew install tree
brew install tig
brew install tmux
brew install wget

# Cask Packages
brew cask install alfred
brew cask install dash
brew cask install diskwave
brew cask install dropbox
brew cask install eclipse-ide
brew cask install firefox
brew cask install genymotion
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install ifunbox
brew cask install iterm2
brew cask install kobito
brew cask install macdown
brew cask install mysqlworkbench
brew cask install sequel-pro
brew cask install sourcetree
brew cask install sublime-text
brew cask install vagrant
brew cask install virtualbox
brew cask install xquartz
brew cask install xtrafinder

# Remove outdated packages
brew cleanup
brew cask cleanup
