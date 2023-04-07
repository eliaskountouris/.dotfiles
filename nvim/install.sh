#!/bin/sh
set -e

if [ $# -eq 0 ]; then
	echo "Missing path to home!"
	exit -1
fi

cmd="ln -sf $PWD/../nvim $1/.config/nvim"
echo $cmd
$cmd
echo "Linked nvim!"

PACKER_INSTALL="$1/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d $PACKER_INSTALL ]; then
	git clone --depth 1 https://github.com/wbthomason/packer.nvim $PACKER_INSTALL
fi

