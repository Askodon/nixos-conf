{ pkgs, ... }:
{
  xsession.windowManager.awesome.enable = true;
  home.packages = with pkgs; [ 
      luarocks # is the package manager for Lua modules
  ];
  home.file = {
    "/home/askodon/.config/awesome".source = ./rc.lua;
  };
}
