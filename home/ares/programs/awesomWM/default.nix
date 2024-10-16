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
  ];
  home.file = {
    ".config/awesome/rc.lua".source = ./lua/rc.lua;
  };
}
