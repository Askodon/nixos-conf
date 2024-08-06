#conf
{
  config,
  pkgs,
  pkgs-stable,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix # Include the results of the hardware scan.
    ./network-settings.nix
    ./boot-settings.nix
    #./game-settings.nix
    ./services.nix
    ./virtualisation.nix
    ./locale.nix
    ./users.nix
    ./zapret.nix
  ];

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  hardware.steam-hardware.enable = true;
  security.rtkit.enable = true;

  #zsh as default
  users.defaultUserShell = pkgs-stable.zsh;
  programs.zsh.enable = true;

  # List packages installed in system profile. To search, run:
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs-stable; [
    git
    fastfetch
    home-manager
    mtr # help | using command like tracert
    gum
  ];

  system.stateVersion = "24.05"; # system version
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ]; # experimental features
}