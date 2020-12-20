#!/bin/zsh
ln -s -f ~/dotfiles/.bash_profile ~/.bash_profile
ln -s -F ~/dotfiles/.vim ~/.vim
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.gitconfig ~/.gitconfig

git submodule init
git submodule update

mkdir -p ~/.vim/colors
cp -u  ~/dotfiles/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
