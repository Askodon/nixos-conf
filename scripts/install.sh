#!/bin/sh
./sync.sh
sudo cp -r /home/askodon/nixos-conf/nixos/. /etc/nixos/.
sudo nixos-rebuild switch
git clone https://github.com/vinceliuice/Qogir-theme.git /home/askodon/Загрузки/qogir
/home/askodon/Загрузки/qogir/install.sh -l -c dark
sudo flatpak override --filesystem=xdg-config/gtk-3.0
sudo flatpak override --filesystem=xdg-config/gtk-4.0
sudo rm -r /home/askodon/.config/home-manager
sudo mkdir /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/nixos/home.nix /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/nixos/all.nix /home/askodon/.config/home-manager
sudo cp -r /home/askodon/nixos-conf/applications /home/askodon/.local/share
sudo cp /home/askodon/nixos-conf/chrome /home/askodon/.mozilla/firefox/dbmi88ob.default
home-manager switch
mkdir /home/askodon/wallpaper

