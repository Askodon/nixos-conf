{ config, pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs = { # Nvchad overlays
    overlays = [ (final: prev: { nvchad = inputs.nvchad4nix.packages."${pkgs.system}".nvchad; }) ];
  };

  environment.systemPackages = with pkgs; [
    git
    gnome.gnome-disk-utility
    zellij
    home-manager
    gum
    xfsprogs
    nq
    lxqt.lxqt-policykit
    luaformatter
    lua
    luarocks
    just
    nh
    nvchad
  ];
}
