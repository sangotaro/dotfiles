#! /bin/sh

DOTFILES_PATH=`pwd`
cd $DOTFILES_PATH
git submodule init
git submodule update

DOTFILES=( .vimrc .vim )
for file in ${DOTFILES[@]}
do
  ln -sf $DOTFILES_PATH/$file $HOME/$file
done
