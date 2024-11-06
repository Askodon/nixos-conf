default:
    @just --list

switch-ares:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H ares .
  exec zsh

switch-artemis:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H artemis .
  exec zsh

switch-apollo:
  sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
  nh os switch -H apollo .
  exec zsh

update-flake:
  nix flake update

new-install:
 cd /etc/nixos
 sudo cp /etc/nixos/hardware-configuration.nix /home/askodon/nixos-conf/nixos/hardware-configuration.nix
 sudo sudo rm -r /boot/*
 NIX_CONFIG="experimental-features=nix-command flakes"; sudo nixos-rebuild switch --flake /home/askodon/nixos-conf .#apollo
 mkdir /home/askodon/wallpaper

