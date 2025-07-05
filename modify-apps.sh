#!/usr/bin/env bash

CONFIG_DIR="$HOME/dots/nixos/modules"

cp -f $CONFIG_DIR/applications.nix $CONFIG_DIR/applications.nix.old

nvim $CONFIG_DIR/applications.nix "+execute \"startinsert|call cursor(21, 43)\""

diff $CONFIG_DIR/applications.nix $CONFIG_DIR/applications.nix.old

read -n1 -p "Do you want to apply the changes? (y/N): " input
echo

if [[ $input == "y" || $input == "Y" ]]; then
	sudo nixos-rebuild switch
else
	cp -f $CONFIG_DIR/applications.nix.old $CONFIG_DIR/applications.nix
fi
