{ pkgs, ... }:

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
        lightdm.greeters.gtk.enable = true;
        lightdm.greeters.gtk = {
          theme = {
            package = pkgs.qogir-theme;
            name = "Qogir-Dark";
          };
          iconTheme = {
            package = pkgs.tela-circle-icon-theme;
            name = "Tela-circle-dark";
          };
          cursorTheme = {
            package = pkgs.bibata-cursors;
            name = "Bibata-Original-Classic";
            size = 24;
          };
        };
      };
    };
  };
}
