{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        term = "xterm-256color";
        font = "FiraCode Nerd Font:size=11";
      };
      mouse = {
        hide-when-typing = "yes";
      };

      cursor = {
        color = "111111 cccccc";
      };

      colors = {
        foreground = "ffffff";
        background = "282c34";
        regular0 = "282c34"; # black
        regular1 = "e06c75"; # red
        regular2 = "98c379"; # green
        regular3 = "e5c07b"; # yellow
        regular4 = "4d84c4"; # blue
        regular5 = "be5046"; # magenta
        regular6 = "56b6c2"; # cyan
        regular7 = "32343d"; # white
        bright0 = "393e48"; # bright black
        bright1 = "d19a66"; # bright red
        bright2 = "56b6c2"; # bright green
        bright3 = "e5c07b"; # bright yellow
        bright4 = "4d84c4"; # bright blue
        bright5 = "be5046"; # bright magenta
        bright6 = "56b6c2";
        bright7 = "abb2bf"; # bright white
      };
    };
  };
}
