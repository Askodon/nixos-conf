{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # unstable.nvim
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
  ];
}
