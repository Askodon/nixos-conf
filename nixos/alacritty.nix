{pkgs, ... }:
{
programs.alacritty = {
		enable = true;
		settings = {
      colors.primary = {
        background =  "#171f2b";
        foreground = "0xd8d8d8";
      };
      shell = {
        program = "zsh";
        #args = [ "zellij" ];
      };
			env.TERM = "xterm-256color";
			window.padding = {
				x = 10;
				y=10;
			};
			window.opacity = 0.7;
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
