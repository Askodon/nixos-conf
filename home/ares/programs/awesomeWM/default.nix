{ pkgs, ... }:
{
  xsession.windowManager.awesome.enable = true;
  home.packages = with pkgs; [
    flameshot # Screenshot tool
    cinnamon.nemo-with-extensions 
    brightnessctl
    xorg.xev
    xorg.xrandr
    arandr
    gpick
    libnotify
    xclip
    clipmenu
    dmenu
    networkmanagerapplet
  ];
  home.file = {
    ".config/awesome/rc.lua".source = ./lua/rc.lua;
    ".config/awesome/theming/qogir.lua".source = ./lua/theming/qogir.lua;
    ".config/awesome/misc/autorun.lua".source = ./misc/autostart.lua;
  };
}
