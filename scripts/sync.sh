#!/bin/sh
gum style \
        --foreground 150 --border-foreground 150 --border double \
        --align center --width 35 --margin "1 2" --padding "2 4" \
        "home = /home/askodon/.config/home-manager/home.nix 
    git folder = /home/askodon/nixos-conf/nixos/home.nix"
SYNC=$(gum choose --limit 1 "cp to home" "cp to git folder" )
if [ "$SYNC" = "cp to home" ]; then
    sudo cp /home/askodon/nixos-conf/nixos/home.nix /home/askodon/.config/home-manager/home.nix
    sudo cp /home/askodon/nixos-conf/nixos/alacritty.nix /home/askodon/.config/home-manager/alacritty.nix
fi
if [ "$SYNC" = "cp to git folder" ]; then
    sudo cp /home/askodon/.config/home-manager/home.nix /home/askodon/nixos-conf/nixos/home.nix
fi
gum spin --spinner meter --title "finish cp" -- sleep 1
exec zsh
