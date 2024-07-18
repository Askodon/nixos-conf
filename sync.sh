#!/bin/sh
WORK_DIR="/home/askodon/nixos-conf"
cp /etc/nixos/configuration.nix $WORK_DIR
cp -r /home/askodon/.config/rofi $WORK_DIR
cp /home/askodon/.config/home-manager/home.nix $WORK_DIR/home
cd /home/askodon/nixos-conf/home/
dconf dump /org/cinnamon/ > cinnamon.dconf
dconf dump /org/gnome/ > gnome.dconf
dconf dump /org/nemo/ | dconf2nix > nemo.nix
dconf dump /org/gtk/ | dconf2nix > gtk.nix
#dconf dump /org/gnome/ | dconf2nix > gnome.nix #test
