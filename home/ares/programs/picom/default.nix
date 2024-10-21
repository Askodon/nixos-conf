{
  services.picom.enable = true;
    home.file = {
    ".config/picom.conf".source = ./picom.conf;
  };
}
