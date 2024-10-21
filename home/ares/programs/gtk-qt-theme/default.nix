{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qogir-kde
    qogir-theme
    tela-circle-icon-theme
    bibata-cursors
    qt5ct
    libsForQt5.qtstyleplugin-kvantum
  ];

  imports = [ ./dconf-settings.nix ];
  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Original-Classic";
    size = 24;
    gtk.enable = true;
  };
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.tela-circle-icon-theme;
      name = "Tela-circle-dark";
    };
    theme = {
      package = pkgs.qogir-theme;
      name = "Qogir-Dark";
    };
  };
  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style.name = "kvantum";
  };
  
  xdg.configFile = {
    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=Qogir-dark
    '';
    "Kvantum/Qogir-dark".source = "${HOME}/nixos-conf/home/kwantum-theme/Qogir-dark";
  };
}
