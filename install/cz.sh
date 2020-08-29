#!/bin/bash

tput setaf 2; echo "---- Configure commitizen file"

rm ~/.czrc
ln -s .dotfiles/czrc ~/.czrc

tput setaf 2; echo "---- Done with commitizen file"
