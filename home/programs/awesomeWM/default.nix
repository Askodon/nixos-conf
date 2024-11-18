{ pkgs, ... }:
{
  xsession.windowManager.awesome.enable = true;
  home.packages = with pkgs; [
    flameshot # Screenshot tool
    nemo-with-extensions
    brightnessctl
    xorg.xev
    xorg.xrandr
    arandr
    gpick
    libnotify
    xclip
    clipmenu
    dmenu
    nitrogen # Change wallpaper
    pasystray
    networkmanagerapplet
  ];
  home.file = {
    ".config/awesome/rc.lua".source = ./lua/rc.lua;
    ".config/awesome/theming/qogir.lua".source = ./lua/theming/qogir.lua;
    ".config/awesome/misc/autostart.lua".source = ./lua/misc/autostart.lua;
    ".config/awesome/misc/focus_window.lua".source = ./lua/misc/focus_window.lua;
  };
}
