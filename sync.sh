#!/bin/sh
WORK_DIR="/home/askodon/nixos-conf"
sudo cp -r /etc/nixos/ $WORK_DIR/nixos
cp /home/askodon/.config/home-manager/home.nix $WORK_DIR/home-manager
sudo rm /home/askodon/nixos-conf/nixos/hardware-configuration.nix
