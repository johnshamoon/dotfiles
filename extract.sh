#!/bin/bash
cp -r .vim ~/
cp .vimrc ~/
cp .bashrc ~/
cp .bash_aliases ~/
cp .tmux.conf ~/

# Make sure that we got the Vundle submodule
git submodule update --recursive
git pull --recurse-submodules

# Install vim plugins
vim +PluginInstall +qall
