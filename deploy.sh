#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./deploy.sh <dotfiles directory>"
    exit
fi

DIR=$(readlink -f $1)

# bashrc
rm ~/.bashrc
ln -s ${DIR}/.bashrc ~/.bashrc

# vimrc
rm ~/.vimrc
ln -s ${DIR}/.vimrc ~/.vimrc

# vim plugins
rm -rf ~/.vim
ln -s ${DIR}/vim ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# gitconfig
rm ~/.gitconfig
ln -s ${DIR}/.gitconfig ~/.gitconfig

# awesome
rm ~/.config/awesome/rc.lua
rm ~/.config/awesome/run_once.sh
ln -s ${DIR}/awesome/rc.lua ~/.config/awesome/rc.lua
ln -s ${DIR}/awesome/run_once.sh ~/.config/awesome/run_once.sh

# feh
rm ~/.fehbg
ln -s ${DIR}/.fehbg ~/.fehbg

