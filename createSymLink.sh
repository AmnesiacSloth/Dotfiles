#!/bin/bash

echo "Please select which symlink to create for your windows system"
echo "1. neovim"

echo "2. boi"
read variable
case $variable in
	1)
		ln -s "$HOME/Documents/githubRepos/Dotfiles/nvim" "$HOME/AppData/Local/";; 
	2)
		echo "boi";;
esac
