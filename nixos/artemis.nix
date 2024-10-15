#conf
{ config, pkgs, ... }:
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
  ];

  #system version
  system.stateVersion = "24.05"; # system version
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ]; # experimental features

  #hardware settings
  hardware.pulseaudio.enable = false;

  #security settings
  security = {
    rtkit.enable = true;
    sudo.enable = true;
    pam.services.gtklock = { };
    pam.services.gdm.enableGnomeKeyring = true;
  };

  #zsh as default
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;

  # List packages installed in system profile. To search, run:
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    git
    home-manager
    gum
    xfsprogs
    lxqt.lxqt-policykit
    zellij
    lua
  ];
}
