#!/bin/sh

# Update Homebrew
brew update || true

# Upgrade Formula
brew upgrade || true

# Brew Cask
brew install caskroom/cask/brew-cask || true

# Add Repository
brew tap homebrew/versions || true
brew tap homebrew/binary || true
brew tap sanemat/font || true
brew tap caskroom/versions

# Packages
brew install ricty || true
brew install jq || true
brew install curl || true
brew install wget || true
brew install tree || true
brew install rename || true
brew install git || true
brew install tig || true
brew install dnsmasq || true
brew install android-sdk || true
brew install android-ndk || true
brew install apktool || true
brew install imagemagick || true
brew install pngquant || true
brew install nodebrew || true
brew install rbenv || true
brew install ruby-build || true
brew install ant || true
brew install pyenv || true
brew install pyenv-virtualenv || true
brew install tmux || true
brew install nginx || true
brew install redis || true

# Cask Packages
brew cask install iterm2 || true
brew cask install google-japanese-ime || true
brew cask install xtrafinder || true
brew cask install xquartz || true
brew cask install google-chrome || true
brew cask install firefox || true
brew cask install alfred || true
brew cask install dash || true
brew cask install eclipse-ide || true
brew cask install sublime-text || true
brew cask install mou || true
brew cask install kobito || true
brew cask install sourcetree || true
brew cask install mysqlworkbench || true
brew cask install sequel-pro || true
brew cask install genymotion || true
brew cask install ifunbox || true
brew cask install virtualbox || true
brew cask install vagrant || true
brew cask install dropbox || true
brew cask install netbeans-php || true

# Remove outdated packages
brew cleanup
brew cask cleanup
