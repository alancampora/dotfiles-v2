#!/bin/bash

tput setaf 2; echo "---- Configure npm global folder"

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

tput setaf 2; echo "---- Done with npm"
