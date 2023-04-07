#!/bin/sh

set -e

# Get home path
if [ $# -eq 0 ]; then
	echo "Missing path to home!"
	exit -1
fi

# zsh install
cmd="sh zsh/install.sh $1"
echo $cmd
$cmd
echo "ZSH Installed!"

# Link nvim
cmd="sh nvim/install.sh $1"
echo $cmd
$cmd
echo "Nvim Installed!"

for file in "files/"*;
do
	if [[ -f $file ]]; then
		base=$(basename $file)
		cmd="ln -sf $PWD/$file $1/.$base"
		echo $cmd
		$cmd
		echo "Linked $base!"
	fi
done
