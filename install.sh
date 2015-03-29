#!/bin/sh

set -eu

script_dir_path=$(cd $(dirname $0); pwd)

git --git-dir=$script_dir_path/.git --work-tree=$script_dir_path submodule init
git --git-dir=$script_dir_path/.git --work-tree=$script_dir_path submodule update
# git -C submodule init
# git -C submodule update

DOTFILES=( .vimrc .vim .bash_profile .bashrc .editorconfig .atom )
for file in ${DOTFILES[@]}
do
  if [ ! -e $HOME/$file ]; then
    ln -sf $script_dir_path/$file $HOME/$file
  fi
done

vi +":BundleInstall" +:q +:q
