#!/bin/sh

set -e

if [ $# -eq 0 ]; then
	echo "Missing path to home!"
	exit -1
fi

# zsh install
cmd="sh zsh/install_ZSH.sh $1"
echo $cmd
$cmd
echo "ZSH Installed!"

# Link nvim
cmd="ln -sf $PWD/nvim $1/.config/nvim"
echo $cmd
$cmd
echo "Linked nvim!"

for file in *;
do
	if [[ -f $file ]]; then
		cmd="ln -sf $PWD/$file $1/.$file"
		echo $cmd
		$cmd
		echo "Linked $file!"
	fi
done
