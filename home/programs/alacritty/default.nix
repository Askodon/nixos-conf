{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      import = [
          "${pkgs.alacritty-theme}/nord.toml"
      ];
      font.normal = {
        family = "FiraCode Nerd Font";
        style  = "Regular";
      };
    };
  };
}
