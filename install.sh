#! /bin/sh

DOTFILES_PATH=`pwd`
cd $DOTFILES_PATH
git submodule init
git submodule update

DOTFILES=( .vimrc .vim .bash_profile .bashrc )
for file in ${DOTFILES[@]}
do
  if [ ! -e $HOME/$file ]; then
    ln -sf $DOTFILES_PATH/$file $HOME/$file
  fi
done

vi +":BundleInstall" +:q +:q
