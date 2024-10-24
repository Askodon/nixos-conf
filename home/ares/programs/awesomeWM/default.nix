{ pkgs, ... }:
{
  xsession.windowManager.awesome.enable = true;
  home.packages = with pkgs; [ 
    st
    flameshot
    cinnamon.nemo-with-extensions
    brightnessctl
    maim
    xorg.xev
    xorg.xrandr
    arandr
  ];
  home.file = {
    ".config/awesome/rc.lua".source = ./lua/rc.lua;
    ".config/awesome/qogir.lua".source = ./lua/qogir.lua;
    ".config/awesome/autorun.sh".source = ./autorun.sh;
  };
}
