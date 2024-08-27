#!/bin/sh
gum style \
        --foreground 150 --border-foreground 150 --border double \
        --align center --width 35 --margin "1 2" --padding "2 4" \
        "update"

doas cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/system-conf/hardware-configuration.nix
doas nixos-rebuild switch --flake /home/askodon/nixos-conf/nixos

gum spin --spinner meter --title "finish update" -- sleep 1
exec zsh

