{ pkgs, ...}:

{
  home.packages = with pkgs; [ 
    vesktop
    ];
  home.file = {
    "/home/askodon/.config/vesktop/themes/onedark.css".source = ./themes/onedark.css;
  };
}