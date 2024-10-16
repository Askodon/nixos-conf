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
  ];
  home.file = {
    ".config/awesome/lua.rc".source = "./lua/rc.lua";
  };
}
