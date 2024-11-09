{ config, pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs = { # Nvchad overlays
    overlays = [ (final: prev: { nvchad = inputs.nvchad4nix.packages."${pkgs.system}".nvchad; }) ];
  };

  environment.systemPackages = with pkgs; [
    git
    zellij
    home-manager
    gum
    xfsprogs
    lxqt.lxqt-policykit
    luaformatter
    lua
    luarocks
    qt5ct
    libsForQt5.qtstyleplugin-kvantum
    just
    nh
    nvchad
  ];
}
