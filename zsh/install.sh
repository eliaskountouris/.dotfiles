#!/bin/sh

set -e

if [ $# -eq 0 ]; then
	echo "Missing path to home!"
	exit -1
fi

export ZSH=$1/.oh-my-zsh

# install oh-my-zsh
if [ ! -d "$1/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Set as default shell
chsh -s $(which zsh)
echo "$SHELL is default shell!"

# Link zshrc
cmd="ln -sf $PWD/zsh/zshrc $1/.zshrc"
echo $cmd
$cmd
echo "Linked zshrc!" 

cmd="ln -sf $PWD/zsh/aliases $1/.aliases"
echo $cmd
$cmd
echo "Linked aliases!" 
