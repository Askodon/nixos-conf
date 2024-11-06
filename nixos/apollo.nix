{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot-settings.nix
    ./modules/locale.nix
    ./modules/network-settings.nix
    ./modules/users.nix
  ];

  
  system.stateVersion = "24.05"; 
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ]; # Experimental features

  # Hostname
  networking.hostName = "apollo";

  # Security settings
  security = {
    rtkit.enable = true;
    sudo.enable = true;
  };
  
  # System packages
  environment.systemPackages = with pkgs; [
    # unstable.nvim
    git
    zellij
    gum
    luaformatter
    lua
    luarocks
    just
    nh
  ];
  
  # Services
  services.openssh.enable = true;

  # zsh as default
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;
}
