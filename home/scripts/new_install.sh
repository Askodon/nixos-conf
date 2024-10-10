#!/bin/sh
cd /etc/nixos
NIX_CONFIG="experimental-features = nix-command flakes" 
sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
sudo sudo rm -r /boot/*
sudo nixos-rebuild switch --flake /home/askodon/nixos-conf
mkdir /home/askodon/wallpaper