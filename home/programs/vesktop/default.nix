{ pkgs, ...}:

{
  home.packages = with pkgs; [ 
    vesktop
    ];
  home.file = {
    "/home/askodon/.config/vesktop/themes/qogir.css".source = "./themes/qogir.css";
    "/home/askodon/.config/vesktop/settings/settings.json".source = "./themes/settings.json";
  };
}