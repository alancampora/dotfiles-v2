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
install curl
install terminator
install zsh 
install npm 
install yarn 
install neovim 
install python-dev 
install python-pip 
install python3-dev 
install python3-pip
install python3-neovim 
install postgresql 
install postgresql-contrib
install redis-server
# dev projects tools
install mongodb-clients
install redshift 
install redshift-gtk
# npm modules

install-module turbo-git  
install-module commitizen  
install-module cz-conventional-changelog

# other stuff
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash


tput setaf 3; echo "End! Ready to rock"
