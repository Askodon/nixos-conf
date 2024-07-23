#!/bin/sh
WORK_DIR="/home/askodon/nixos-conf"
sudo cp -r /etc/nixos/ $WORK_DIR
sudo rm /home/askodon/nixos-conf/nixos/hardware-configuration.nix
cp -r /home/askodon/.config/rofi $WORK_DIR
cp /home/askodon/.config/home-manager/home.nix $WORK_DIR/home-manager
