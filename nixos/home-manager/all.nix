{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-theme = "Bibata-Original-Classic";
      enable-animations = true;
      enable-hot-corners = false;
      font-name = "Roboto 11";
      gtk-theme = "Qogir-Dark";
      icon-theme = "WhiteSur";
      monospace-font-name = "FiraCode Nerd Font 10";
      toolkit-accessibility = false;
    };
  };
}
