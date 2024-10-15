{ config, pkgs, ... }:

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
      displayManager = {
        startx.enable = true;
        gdm.enable = true;
    };
    };
    displayManager.defaultSession = "none+awesome";
  };
    environment.variables = {
      GDK_SCALE = "2";
      GDK_DPI_SCALE = "0.5";
      _JAVA_OPTIONS = "-Dsun.java2d.uiScale=2";
    };
}  
