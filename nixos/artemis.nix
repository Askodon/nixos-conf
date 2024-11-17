{ pkgs, inputs, config, pkgsUnstable, lib, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot-settings.nix
    ./modules/game-settings.nix
    ./modules/locale.nix
    ./modules/network-settings.nix
    ./modules/services.nix
    ./modules/system-variables.nix
    ./modules/users.nix
    ./modules/virtualisation.nix
    ./modules/overlays.nix
    ./modules/flatpak.nix
    ./modules/hyprland.nix
    ./modules/system-packages.nix
    ./modules/kmscon.nix
  ];

  # Unstable
  _module.args.pkgsUnstable = import inputs.nixpkgs-unstable {
    inherit (pkgs.stdenv.hostPlatform) system;
    inherit (config.nixpkgs) config;
  };

  # system version
  system.stateVersion = "24.05"; # system version
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ]; # experimental features

  # Unstable pkgs
  environment.systemPackages = [
    pkgsUnstable.spoofdpi
    pkgsUnstable.amneziawg-go
    pkgs.qpwgraph
  ];

  # hostname
  networking.hostName = "artemis"; # hostname

  # hardware settings
  hardware.pulseaudio.enable = false;

  # security settings
  security = {
    rtkit.enable = true;
    sudo.enable = true;
    polkit.enable = true;
    pam.services.gdm.enableGnomeKeyring = true;
  };

  # nu as default
  users.defaultUserShell = pkgs.nushell;
}
