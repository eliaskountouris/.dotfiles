#!/bin/sh

export ZSH=$HOME/.oh-my-zsh

# install ZSH
pacman -S zsh
echo "ZSH Installed!"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set as default shell
chsh -s $(which zsh)
echo "$SHELL is default shell!"

# Link zshrc
cmd="ln -sf $PWD/zsh/zshrc $HOME/.zshrc"
echo $cmd
$cmd
echo "Linked zshrc!" 

cmd="ln -sf $PWD/zsh/aliases $HOME/.aliases"
echo $cmd
$cmd
echo "Linked aliases!" 
