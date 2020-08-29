#!/bin/bash

tput setaf 2; echo "---- Configure symlink .zshrc file"

rm ~/.zshrc
ln -s .dotfiles/zshrc ~/.zshrc

tput setaf 2; echo "---- Done with .zshrc file"
