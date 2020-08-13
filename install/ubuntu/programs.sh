#!/bin/bash

function install {
	which $1 &> /dev/null

	if [ $? -ne 0 ]; then
		tput setaf 2; echo "Installing ${1}..."
		sudo apt install -y $1
	else
		tput setaf 1; echo "${1} was already installed!"
	fi
}

function install-module {
	npm list -g --depth=0 | grep $1 &> /dev/null 

	if [ $? -ne 0 ]; then
		tput setaf 2; echo "Installing npm module ${1}..."
		npm install -g $1
	else
		tput setaf 1; echo "${1} npm module was already installed!"
	fi
}

# Update apt
sudo apt update 

# global apps 

install git
install terminator
install zsh 
install npm 


# npm modules

install-module commitizen  
install-module turbo-git  

# other stuff
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


