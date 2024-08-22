{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      shell = {
        program = "zsh";
        #args = [ "zellij" ];
      };
      env.TERM = "xterm-256color";
      window.padding = {
        x = 10;
        y = 10;
      };
      window.opacity = 0.9;
      scrolling.history = 1000;
      font = {
        normal = {
          family = "Fira Code";
          style = "Regular";
        };
        bold = {
          family = "Fira Code";
          style = "Bold";
        };
        italic = {
          family = "Fira Code";
          style = "Italic";
        };
        size = 14;

      };
    };
  };
}
