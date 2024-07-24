#!/bin/sh
sudo cp -r /home/askodon/nixos-conf/nixos/. /etc/nixos/.
sudo nixos-rebuild switch
git clone https://github.com/vinceliuice/Qogir-theme.git /home/askodon/Загрузки/qogir
/home/askodon/Загрузки/qogir/install.sh -l -c dark
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=xdg-config/gtk-3.0
sudo flatpak override --filesystem=xdg-config/gtk-4.0
sudo cp -r rofi /home/askodon/.config
sudo rm -r /home/askodon/.config/home-manager
sudo mkdir /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/home-manager/home.nix /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/home-manager/all.nix /home/askodon/.config/home-manager
home-manager switch
mkdir /home/askodon/wallpaper

