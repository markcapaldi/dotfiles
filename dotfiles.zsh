#!/bin/zsh

# Write aliases and environment variables to .zshrc
./confgure.zsh

rm ~/.p10k.zsh
ln -Fsh ~/dotfiles/.vim ~/.vim
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.gitconfig ~/.gitconfig
ln -s -f ~/dotfiles/.p10k.zsh ~/.p10k.zsh

git submodule init
git submodule update

mkdir -p ~/.vim/colors
cp ~/dotfiles/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
