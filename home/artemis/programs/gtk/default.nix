{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qogir-kde
    qogir-theme
    tela-circle-icon-theme
    bibata-cursors
    qt5ct
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
  xdg.configFile."Kvantum/kvantum.kvconfig".source =
    (pkgs.formats.ini { }).generate "kvantum.kvconfig"
      { General.theme = "Qogir-dark"; };

  xdg.configFile."qt5ct/qt5ct.conf".source = (pkgs.formats.ini { }).generate "kvantum.kvconfig" {
    Appearance.icon_theme = "Tela-circle-dark";
  };
}
