#!/bin/sh
gum style \
        --foreground 150 --border-foreground 150 --border double \
        --align center --width 35 --margin "1 2" --padding "2 4" \
        "update type "
UPGRADE=$(gum choose --limit 1 "upgrade home-manager" "upgrade flake" )
if [ "$UPGRADE" = "upgrade flake" ]; then
    sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
    sudo nixos-rebuild switch --flake /home/askodon/nixos-conf/nixos/
fi
if [ "$UPGRADE" = "upgrade home-manager" ]; then
    home-manager --flake /home/askodon/nixos-conf/nixos switch
fi
gum spin --spinner meter --title "finish update" -- sleep 1
exec zsh

