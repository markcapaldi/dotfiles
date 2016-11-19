#!/bin/bash
ln -s -f ~/dotfiles/.bash_profile ~/.bash_profile
ln -s -F ~/dotfiles/.vim ~/.vim
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.gitconfig ~/.gitconfig

git submodule init
git submodule update
