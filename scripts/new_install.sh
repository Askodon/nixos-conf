#!/bin/sh
nix-shell -p git
cd /etc/nixos
echo "nix.settings.experimental-features = [ "nix-command" "flakes" ];" >> conf.nix
nixos-rebuild switch
sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/system-conf/hardware-configuration.nix
sudo nixos-rebuild switch --flake /home/askodon/nixos-conf/nixos