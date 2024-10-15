{ pkgs, ... }:
{
  xsession.windowManager.awesome.enable = true;
  home.packages = with pkgs; [ 
    st
    rofi
  ];
  home.file = {
    ".config/awesome/rc.lua".source = ./rc.lua;
  };
}
