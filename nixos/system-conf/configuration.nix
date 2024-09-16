#conf
{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix # Include the results of the hardware scan.
    ./network-settings.nix
    ./boot-settings.nix
    ./game-settings.nix
    ./services.nix
    ./virtualisation.nix
    ./locale.nix
    ./users.nix
    ./system-variables.nix
  ];

  hardware.pulseaudio.enable = false;
  hardware.steam-hardware.enable = true;
  security = {
    rtkit.enable = true;
    sudo.enable = true;
    pam.services.hyprlock = {};
    pam.services.gdm.enableGnomeKeyring = true;
  };

  #stylix 
  #stylix.enable = true;
  #stylix.image = /home/askodon/wallpaper/nix.jpg;

  #zsh as default
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;
  programs.hyprland.enable = true;

  #game settings
  programs.gamemode.enable = true;
  programs.noisetorch.enable = true;

  # List packages installed in system profile. To search, run:
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    git
    home-manager
    gum
    gnome.gnome-disk-utility
    xfsprogs
    nodejs_22
    qt6ct
    rofi-wayland
    lxqt.lxqt-policykit
  ];

  system.stateVersion = "24.05"; # system version
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ]; # experimental features
}
