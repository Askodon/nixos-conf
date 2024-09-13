{ pkgs, ...}:
{
  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 40;
    gtk.enable = true;
  };
  gtk = {
    enable = true;
    font = {
      package = (pkgs.nerdfonts.override { fonts = [ "Roboto" ]; });
      name = "Roboto Regular";
      size = 11;
    };
    iconTheme = {
      package = pkgs.whitesur-icon-theme;
      name  = "WhiteSur-dark";
    };
    theme = {
      package = pkgs.qogir-theme;
      name = "Qogir-Dark";
    };
  };
}