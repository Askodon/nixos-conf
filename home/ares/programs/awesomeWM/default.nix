{ pkgs, ... }:
{
  imports = [
    ./lua/main/main-import.nix
    ./lua/deco/deco-import.nix
    ./lua/binding/binding.nix
  ];
  xsession.windowManager.awesome.enable = true;
  home.packages = with pkgs; [ 
    st
    rofi
    cinnamon.nemo-with-extensions
    brightnessctl
    maim
    picom
    xorg.xev
    xorg.xrandr
    arandr
  ];
  home.file = {
    ".config/awesome/rc.lua".source = ./lua/rc.lua;
    ".config/awesome/autorun.sh".source = ./autorun.sh;
  };
}
