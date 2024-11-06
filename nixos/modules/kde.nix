{
services.xserver.enable = true;
service.xserver.displayManager = {
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
services.desktopManager.plasma6.enable = true;
services.displayManager.defaultSession = "plasma";
}
