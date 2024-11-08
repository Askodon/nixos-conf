default:
    @just --list

switch-ares:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H ares .
  exec nu

switch-artemis:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H artemis .
  exec nu

switch-apollo:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H apollo .
  exec nu

switch-athena:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H athena .
  exec nu

update-flake:
  nix flake update

remove-trash:
  nh clean all

hm-info:
  journalctl -e --unit home-manager-askodon.service

new-install:
 cd /etc/nixos
 sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
 su -c 'sudo rm -r /boot/*'
 NIX_CONFIG="experimental-features=nix-command flakes"; sudo nixos-rebuild switch --flake.#apollo
 mkdir /home/askodon/wallpaper

