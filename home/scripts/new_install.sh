#!/bin/sh
nix-shell -p git
cd /etc/nixos
echo "nix.settings.experimental-features = [ "nix-command" "flakes" ];" >> /etc/nixos/configuration.nix
nixos-rebuild switch
sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
sudo sudo rm -r /boot/*
sudo nixos-rebuild switch --flake /home/askodon/nixos-conf
mkdir /home/askodon/wallpaper