{ pkgs, ... }:

{
  programs.fuzzel = {
    enable = true;
    settings = {
      # fuezzl.ini
      main = {
        terminal = "${pkgs.foot}/bin/foot";
        layer = "overlay";
        font = "RobotoMono Nerd Font Regular:weight=Regular:size=11";
        dpi-aware = "no";
      };
      colors = {
        background = "32343dfa";
        border = "4d84c4fa";
        selection = "4d84c4fa";
        text = "fffffffa";
        selection-text = "fffffffa";
      };
      border.radius = "1";
    };
  };
}
