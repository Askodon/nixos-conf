{
  home.file.zellij = {
    target = ".config/zellij/config.kdl";
    text = ''
          bind "Alt g" { SwitchToMode "locked"; }
          default_shell "nu"
          keybinds {
            normal clear-defaults=true {
              bind "Ctrl b" { SwitchToMode "Tmux"; }
            }
        }
            tmux clear-defaults=true {
          bind "Ctrl f" { Write 2; SwitchToMode "Normal"; }
          bind "Esc" { SwitchToMode "Normal"; }
          bind "g" { SwitchToMode "Locked"; }
          bind "p" { SwitchToMode "Pane"; }
          bind "t" { SwitchToMode "Tab"; }
          bind "n" { SwitchToMode "Resize"; }
          bind "h" { SwitchToMode "Move"; }
          bind "s" { SwitchToMode "Scroll"; }
          bind "o" { SwitchToMode "Session"; }
          bind "q" { Quit; }
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
