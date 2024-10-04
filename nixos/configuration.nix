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
    ./modules/spoofdpi.nix
  ];

  #system version
  system.stateVersion = "24.05"; # system version
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ]; # experimental features

  #hardware settings
  hardware.pulseaudio.enable = false;
  hardware.steam-hardware.enable = true;

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
  programs.hyprland.enable = true;

  #game settings
  programs = {
    gamescope.enable = true;
    gamemode.enable = true;
    noisetorch.enable = true;
  };

  # List packages installed in system profile. To search, run:
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    git
    home-manager
    gum
    xfsprogs
    qt6ct
    lxqt.lxqt-policykit
  ];
}
