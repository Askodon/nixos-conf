#!/bin/sh
WORK_DIR="/home/askodon/nixos-conf"
cp /etc/nixos/configuration.nix $WORK_DIR
cp -r /home/askodon/.config/rofi $WORK_DIR
cp /home/askodon/.config/home-manager/home.nix $WORK_DIR
cp /home/askodon/.config/home-manager/all.nix $WORK_DIR
#dconf dump /org/gnome/ | dconf2nix > gnome.nix #test
