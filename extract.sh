#!/bin/bash
# copy all of the files to the home directory
cp -r .vim ~/
cp .vimrc ~/
cp .bashrc ~/
cp .bash_aliases ~/
cp .tmux.conf ~/

# Download Vundle
# TODO: Add submodule instead instead of doing it here.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Open vim, run :PluginInstall, then quit
vim +PluginInstall +qall
