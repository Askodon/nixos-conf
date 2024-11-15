{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      import = [
          "${pkgs.alacritty-theme}/one_dark.toml"
      ];
      font.normal = {
        family = "FiraCode Nerd Font";
        style  = "Regular";
      };
    };
  };
}
