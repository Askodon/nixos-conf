{
  programs.zellij.enable = true;
  home.file.zellij = {
    target = ".config/zellij/config.kdl";
    text = ''
        bind "Alt g" { SwitchToMode "locked"; }

        keybinds {
          normal clear-defaults=true {
            bind "Ctrl b" { SwitchToMode "Tmux"; }
          }
      }

        themes {
      	  qogir {
      		  bg "#282c34"
      		  black "#282c34"
      		  blue "#4d84c4"
      		  cyan "#56b6c2"
      		  fg "#5CA3F6"
      		  green "#5CA3F6"
      		  magenta "#be5046"
      		  orange "#14CFA1"
      		  red "#e06c75"
      		  white "#ffffff"
      		  yellow "#e5c07b"
      	}
      }
    '';
  };
}
