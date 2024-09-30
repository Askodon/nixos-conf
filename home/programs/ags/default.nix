{
  programs.ags = {
    enable = true;
  };
  home.file = {
    ".config/ags/config.js".source = ./config/config.js;
    ".config/ags/applauncher.js".source = ./config/applauncher.js;
  };
}