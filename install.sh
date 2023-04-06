#!/bin/sh

# zsh install
cmd="sh zsh/install_ZSH.sh"
echo $cmd
$cmd
echo "ZSH Installed!"

# Link nvim
cmd="ln -sf $PWD/nvim $HOME/.config/nvim"
echo $cmd
$cmd
echo "Linked nvim!"

for file in *;
do
	if [[ -f $file ]]; then
		cmd="ln -sf $PWD/$file $HOME/.$file"
		echo $cmd
		$cmd
		echo "Linked $file!"
	fi
done
