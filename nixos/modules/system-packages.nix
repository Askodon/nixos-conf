{ pkgs, ... }: 
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    git
    home-manager
    gum
    xfsprogs
    lxqt.lxqt-policykit
    zellij
    luaformatter
    lua
    qt5ct
    libsForQt5.qtstyleplugin-kvantum
  ];
}