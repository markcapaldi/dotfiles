#!/bin/bash
cd ~

git clone git@github.com:markcapaldi/dotfiles.git
cd dotfiles

ln -s -f ~/dotfiles/.bash_profile ~/.bash_profile
ln -s -F ~/dotfiles/.vim ~/.vim
ln -s -f ~/dotfiles/.vimrc ~/.vimrc

git submodule init
git submodule update
