{ pkgs, ... }:

{
  home.packages = with pkgs; [ vesktop ];
  home.file = {
    ".config/vesktop/themes/qogir.css".source = ./themes/qogir.css;
  };
}
