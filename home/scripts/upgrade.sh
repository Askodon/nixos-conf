#!/bin/sh
gum style \
        --foreground 150 --border-foreground 150 --border double \
        --align center --width 35 --margin "1 2" --padding "2 4" \
        "choose host machine" \
        "artemis as "main pc" " \
        "ares as "test playground" "

sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
cd /home/askodon/nixos-conf
HOST=$(gum choose --limit 1 ".#artemis" ".#ares" )
sudo nixos-rebuild switch --flake $HOST
exec zsh

