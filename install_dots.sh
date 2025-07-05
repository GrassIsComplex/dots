#!/usr/bin/env bash

CONF_DIR="/home/grass/.config"

echo -e "WARNING THIS WILL DELETE YOUR CURRENT CONFIGS"

pwd

for i in {1..5}; do 
	echo -n "."
	sleep 1
done

echo

sudo rm -rf /etc/nixos
sudo ln -s "$(pwd)/nixos" /etc/nixos
echo "Created nixos link"

rm -rf $CONF_DIR/hypr
ln -s "$(pwd)/hypr" $CONF_DIR/hypr
echo "Created hyprland link"

rm -rf $CONF_DIR/waybar
ln -s "$(pwd)/waybar" $CONF_DIR/waybar
echo "Created waybar link"

echo
echo "All symbolic links created"

