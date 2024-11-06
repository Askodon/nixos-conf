{
  config,
  inputs,
  pkgs,
  pkgsUnstable,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot-settings.nix
    #./modules/game-settings.nix
    ./modules/locale.nix
    ./modules/network-settings.nix
    ./modules/services.nix
    ./modules/system-variables.nix
    ./modules/users.nix
    ./modules/virtualisation.nix
    ./modules/overlays.nix
    ./modules/flatpak.nix
    ./modules/awesome.nix
    ./modules/system-packages.nix
  ];
  _module.args.pkgsUnstable = import inputs.nixpkgs-unstable {
    inherit (pkgs.stdenv.hostPlatform) system;
    inherit (config.nixpkgs) config;
  };

  system.stateVersion = "24.05";
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ]; # Experimental features

  # Unstable pkgs
  environment.systemPackages = [
    #pkgsUnstable.neovim
    pkgs.nvchad
  ];

  # Nvchad overlay
  nixpkgs = {
    overlays = [ (final: prev: { nvchad = inputs.nvchad4nix.packages."${pkgs.system}".nvchad; }) ];
  };

  # Hostname in network
  networking.hostName = "ares";

  # Hardware settings
  hardware.pulseaudio.enable = false;

  # Security settings
  security = {
    rtkit.enable = true;
    sudo.enable = true;
    polkit.enable = true;
  };

  # Zsh as default
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;
}
