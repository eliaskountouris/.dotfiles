#!/bin/sh
set -e

if [ $# -eq 0 ]; then
	echo "Missing path to home!"
	exit -1
fi

cmd="ln -sf $PWD/nvim $1/.config/nvim"
echo $cmd
$cmd
echo "Linked nvim!"
