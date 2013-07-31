#! /bin/sh
git submodule init
git submodule update
ln -s ~/dotfiles/.vim/ ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
