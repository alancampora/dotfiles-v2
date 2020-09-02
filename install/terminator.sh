#!/bin/bash

tput setaf 2; echo "---- Configure terminator"

rm ~/.config/terminator/config
ln -s ~/.dotfiles/terminator ~/.config/terminator/config

tput setaf 2; echo "---- Done with terminator"
