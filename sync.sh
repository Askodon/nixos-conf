#!/bin/sh
WORK_DIR="/home/askodon/nixos-conf"
cp /etc/nixos/configuration.nix $WORK_DIR
cp -r /home/askodon/.config/rofi $WORK_DIR
cp /home/askodon/.config/home-manager/home.nix $WORK_DIR
dconf dump /org/cinnamon/ > cinnamon.dconf
dconf dump /org/nemo/ > nemo.dconf
dconf dump /org/gtk/ > gtk.dconf
dconf dump /org/gnome/ > gnome.dconf