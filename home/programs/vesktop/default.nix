{ pkgs, ... }:

{
  home.packages = with pkgs; [ vesktop ];
  home.file = {
    "/home/askodon/.config/vesktop/themes/qogir.css".source = ./themes/qogir.css;
  };
}
