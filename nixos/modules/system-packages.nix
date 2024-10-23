{ pkgs, ... }: 
{
  nixpkgs.config.allowUnfree = true;
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
  ];
}
