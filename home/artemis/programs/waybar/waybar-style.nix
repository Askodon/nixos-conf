{
  home.file.".config/waybar/style.css".text = ''
    /*base background color*/
    @define-color bg_main rgb(50, 52, 61);
    @define-color bg_main_tooltip rgba(0, 0, 0, 0.7);


    /*base background color of selections */
    @define-color bg_hover rgba(200, 200, 200, 0.3);
    /*base background color of active elements */
    @define-color bg_active rgba(100, 100, 100, 0.5);

    /*base border color*/
    @define-color border_main rgba(92, 163, 246, 1);

    /*text color for entries, views and content in general */
    @define-color content_main white;
    /*text color for entries that are unselected */
    @define-color content_inactive rgba(255, 255, 255, 0.25);

    * {
    	text-shadow: none;
    	box-shadow: none;
      border: none;
      border-radius: 0;
    	font-family: "RobotoMono Nerd Font Regular";
      font-weight: 600;
      font-size: 12.7px;
    	
    	
    }

    window#waybar {
      background:  @bg_main;
      border-top: 1px solid @border_main;
      color: @content_main;
    }

    tooltip {
      background: @bg_main_tooltip;
      border-radius: 0px;
      border-width: 1px;
      border-style: solid;
      border-color: @border_main;
    }
    tooltip label{
      color: @content_main;
    }

    #custom-os_button {
    	font-family: "RobotoMono Nerd Font Regular";
      font-size: 24px;
    	padding-left: 12px;
    	padding-right: 20px;
    	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
    }
    #custom-os_button:hover {
      background:  @bg_hover;
    	color: @content_main;
    }

    #workspaces {
      color: transparent;
    	margin-right: 1.5px;
    	margin-left: 1.5px;
    }
    #workspaces button {
      padding: 3px;
      color: @content_inactive;
    	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
    }
    #workspaces button.active {
    	color: @content_main;
    	border-bottom: 3px solid rgba(92, 163, 246, 1);
    }
    #workspaces button.focused {
      color: @bg_active;
    }
    #workspaces button.urgent {
    	background:  rgba(255, 200, 0, 0.35);
    	border-bottom: 3px dashed @warning_color;
    	color: @warning_color;
    }
    #workspaces button:hover {
      background: @bg_hover;
    	color: @content_main;
    }

    #taskbar {
    }

    #taskbar button {
    	min-width: 30px;
    	border-bottom: 3px solid rgba(255, 255, 255, 0.3);
    	margin-left: 2px;
    	margin-right: 2px;
      padding-left: 2px;
      padding-right: 2px;
      color: white;
    	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
    }

    #taskbar button.active {
    	border-bottom: 3px solid rgba(92, 163, 246, 1);
      background: @bg_active;
    }

    #taskbar button:hover {
    	border-bottom: 3px solid rgba(92, 163, 246, 1);
      background: @bg_hover;
    	color: @content_main;
    }

    #cpu, #disk, #memory {
    	padding:3px;
    }

    #temperature {
    	color: transparent;
    	font-size: 0px;
    	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
    }
    #temperature.critical {
    	padding-right: 3px;
    	color: @warning_color;
    	font-size: initial;
    	border-bottom: 3px dashed @warning_color;
    	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
    }

    #window {
      border-radius: 10px;
      margin-left: 20px;
      margin-right: 20px;
    }

    #tray{
      margin-left: 5px;
      margin-right: 5px;
    }
    #tray > .passive {
    	border-bottom: none;
    }
    #tray > .active {
    	border-bottom: 3px solid rgba(92, 163, 246, 1);
    }
    #tray > .needs-attention {
    	border-bottom: 3px solid @warning_color;
    }
    #tray > widget {
    	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
    }
    #tray > widget:hover {
    	background: @bg_hover;
    }

    #pulseaudio {
    	font-family: "RobotoMono Nerd Font Regular";
    	padding-left: 3px;
      padding-right: 3px;
    	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
    }
    #pulseaudio:hover {
     	background: @bg_hover;
    }

    #language {
      padding-left: 5px;
      padding-right: 5px;
    }

    #clock {
      padding-right: 5px;
      padding-left: 5px;
    	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
    }
    #clock:hover {
    	background: @bg_hover;
    }
  '';
}