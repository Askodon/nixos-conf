{ pkgs, ... }:
{
  xsession.windowManager.awesome.enable = true;
  home.packages = with pkgs; [ 
    st
    rofi
  ];
  home.file = {
    ".config/awesome/".source = ./lua/;
    recursive = true;
  };
}
