{ pkgs,  ... }:
{
  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Original-Classic";
    size = 24;
    gtk.enable = true;
  };
  # gtk = {
  # enable = true;
  #   font = {
  #     package = pkgs.roboto;
  #     name = "Roboto Regular";
  #     size = 11;
  #   };
  #   iconTheme = {
  #     package = pkgs.whitesur-icon-theme;
  #     name  = "WhiteSur-dark";
  #   };
  #   theme = {
  #     package = pkgs.qogir-theme;
  #     name = "Qogir-Dark";
  #   };
  # };
}