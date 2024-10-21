{ pkgs, ... }:
{
  home.packages = with pkgs; [ 
    picom 
    ];
  home.file = {
    ".config/picom.conf".source = ./picom.conf;
  };
}
