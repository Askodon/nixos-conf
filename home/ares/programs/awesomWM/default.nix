{
  services = {
    xserver = {
      enable = true;
      windowManager.awesome = {
        enable = true;
        luaModules = with pkgs.luaPackages; [
          luarocks # is the package manager for Lua modules
          luadbi-mysql # Database abstraction layer
        ];
      };
    };
  };
  home.file = {
    "/home/askodon/.config/awesome".source = ./rc.lua;
  };
}
