default:
    @just --list

switch-ares:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H ares .
  exec zsh

hm-info:
  journalctl -e --unit home-manager-askodon.service

switch-artemis:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H artemis .
  exec zsh

switch-apollo:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H apollo .
  exec zsh

switch-athena:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H athena .
  exec zsh

update-flake:
  nix flake update

remove-trash:
  nh clean all

new-install:
 cd /etc/nixos
 sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
 su -c 'sudo rm -r /boot/*'
 NIX_CONFIG="experimental-features=nix-command flakes"; sudo nixos-rebuild switch --flake.#apollo
 mkdir /home/askodon/wallpaper

