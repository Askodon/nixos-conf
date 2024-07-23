#!/bin/sh
sudo cp -r /home/askodon/nixos-conf/nixos/. /etc/nixos/.
sudo nixos-rebuild switch
dconf load / < all.dconf
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
cp -r rofi /home/askodon/.config
sudo rm -r /home/askodon/.config/home-manager
mkdir /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/keyboard.nix /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/home.nix /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/all.nix /home/askodon/.config/home-manager
sudo ln -s /home/askodon/.config/home-manager/home.nix /etc/nixos/
home-manager switch
mkdir /home/askodon/wallpaper
