#conf
{ config, pkgs, stylix, ... }:
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
  ];

  hardware.pulseaudio.enable = false;
  hardware.steam-hardware.enable = true;
  security = {
    rtkit.enable = true;
    sudo.enable = true;
    pam.services.gtklock = {};    ./hyprlock.nix
    pam.services.gdm.enableGnomeKeyring = true;
  };

  #stylix 
  stylix.enable = true;
  stylix.image = "/home/askodon/nixos-conf/home/images/lock.jpg";

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
