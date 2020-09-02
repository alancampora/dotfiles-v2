#!/bin/bash

tput setaf 2; echo "---- Download vim plug file"

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | bash 

tput setaf 2; echo "---- Done with vim plug file"
