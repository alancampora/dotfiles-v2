#!/bin/bash

function setup {
	if [ ! -d $2 ]; then

		tput setaf 2; echo "Let's clone ${1}..."
		git clone $1 $2

		tput setaf 2; echo "Creating base16 config"

		echo 'BASE16_SHELL="$HOME/.config/base16-shell/"
		[ -n "$PS1" ] && \
			[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
			eval "$("$BASE16_SHELL/profile_helper.sh")"' >> ~/.zshrc

		tput setaf 2; echo "Base16 done!"
	else
		tput setaf 1; echo "${1} was already installed!"
	fi
}

setup https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

