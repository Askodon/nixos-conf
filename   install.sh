#!/bin/sh
sudo cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
dconf load / < all.dconf
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
cp -r rofi /home/askodon/.config
sudo rm -r /home/askodon/.config/home-manager
mkdir /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/home.nix /home/askodon/.config/home-manager
home-manager switch
mkdir /home/askodon/wallpaper