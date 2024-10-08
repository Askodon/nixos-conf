{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./hypr-env.nix
    ./hypridle.nix
  ];

  home.packages = with pkgs; [
    swww
    hyprpicker
    wl-clipboard
    wleave
    nwg-look
    nwg-displays
    hyprshot
    glib
    pavucontrol
    kdePackages.qtwayland
    libsForQt5.qtstyleplugin-kvantum
    xorg.libxcb
    lxqt.lxqt-policykit
    cinnamon.nemo-with-extensions
    cinnamon.nemo-fileroller
    gtklock
    networkmanagerapplet
    clipman
    libnotify
  ];

  #test later systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    #package = inputs.hyprland.packages.${pkgs.system}.hyprland; # add this, after fix libinput 1.26.0 
    systemd.enable = true;
    systemd.variables = [ "--all" ];
    plugins = [ pkgs.hyprlandPlugins.hyprexpo ];
    extraConfig = ''

        #monitor
        monitor=, 1920x1080, auto, 1

        #autostart
        exec-once = /home/askodon/nixos-conf/home/scripts/swww.sh
        exec-once = /home/askodon/nixos-conf/home/scripts/break_time.sh
        exec-once = hyprctl setcursor Bibata-Original-Classic 24
        exec-once = waybar
        exec-once = nextcloud
        exec-once = dunst
        exec-once = nm-applet --indicator
        exec-once = nextcloud --background 
        exec-once = wl-paste -t text --watch clipman store --no-persist

        #kit for keyring works
        exec-once = lxqt-policykit-agent

        #themes
        exec = gsettings set org.gnome.desktop.interface gtk-theme "Qogir-Dark"   # for GTK3 apps
        exec = gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"   # for GTK4 apps
        env = QT_QPA_PLATFORMTHEME,qt5ct
        env = NIXOS_OZONE_WL,1

        #cursor
        exec-once = hyprctl setcursor Bibata-Original-Classic 24

        #windowrule
        #pavucontrol
        windowrule = float,^(pavucontrol)$
        windowrule = pin,^(pavucontrol)$
        windowrule = size 374 498 ,^(pavucontrol)$
        windowrule = move 1544 531,^(pavucontrol)$
        #nm-settings
        windowrule = float,^(nm-connection-editor)$
        windowrule = pin, title:^(Сетевые соединения)
        windowrule = move 1413 533  , title:^(Сетевые соединения) 
        windowrule = size 502 497 , title:^(Сетевые соединения)
        #nemo
        windowrulev2 = float, title:^(Открытие файлов)
        windowrulev2 = float, title:^(Свойства)
        #foot
        windowrulev2 = opacity 0.95, class:^([Ff]oot)

        #debug
        debug {
          disable_logs = false
          enable_stdout_logs = true
        }


        # Input config
        input {
            kb_layout = us, ru
            kb_variant =
            kb_model =
            kb_options = grp:win_space_toggle 
            kb_rules =

            follow_mouse = 1

            sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
        }

        

        general {

            gaps_in = 1
            gaps_out = 1
            border_size = 2
            col.active_border = rgba(00ff99ee) rgba(325da8fc) 45deg
            
            col.inactive_border = rgba(282a33aa)

            layout = dwindle
        }

        dwindle {
            pseudotile = yes
            preserve_split = yes
        }

        $mainMod = SUPER
        bind = $mainMod, tab, hyprexpo:expo, toggle
        bind = $mainMod, P, exec, /home/askodon/nixos-conf/home/scripts/hyprshot.sh
        bind = $mainMod, G, fullscreen,
        bind = $mainMod, Q, killactive
        bind = $mainMod SHIFT, C, exec, hyprpicker -a
        bind = $mainMod, C, exec, /home/askodon/nixos-conf/home/scripts/clipboard.sh
        bind = $mainMod, F, exec, firefox 
        bind = $mainMod, T, exec, foot
        # bind = $mainMod, Z, exec, fuzzel -d
        bind = $mainMod, M, exec, /home/askodon/nixos-conf/home/scripts/main_menu.sh
        bind = $mainMod, E, exec, nemo
        bind = $mainMod, V, togglefloating,
        bind = $mainMod, w, exec, ags -t applauncher
        bind = $mainMod, J, togglesplit, # dwindle


        # Functional keybinds
        bind =,XF86AudioMicMute,exec,pamixer --default-source -t
        bind =,XF86MonBrightnessDown,exec,light -U 20
        bind =,XF86MonBrightnessUp,exec,light -A 20
        bind =,XF86AudioMute,exec,pamixer -t
        bind =,XF86AudioLowerVolume,exec,pamixer -d 10
        bind =,XF86AudioRaiseVolume,exec,pamixer -i 10
        bind =,XF86AudioPlay,exec,playerctl play-pause
        bind =,XF86AudioPause,exec,playerctl play-pause

        # to switch between windows in a floating workspace
        bind = SUPER,Tab,cyclenext,
        bind = SUPER,Tab,bringactivetotop,

        # Move focus with mainMod + arrow keys
        bind = $mainMod, h, movefocus, l
        bind = $mainMod, l, movefocus, r
        bind = $mainMod, k, movefocus, u
        bind = $mainMod, j, movefocus, d

        # Move focus with mainMod + arrow keys
        bind = $mainMod SHIFT, h, swapwindow, l
        bind = $mainMod SHIFT, l, swapwindow, r
        bind = $mainMod SHIFT, k, swapwindow, u
        bind = $mainMod SHIFT, j, swapwindow, d

        # Switch workspaces with mainMod + [0-9]
        bind = $mainMod, 1, workspace, 1
        bind = $mainMod, 2, workspace, 2
        bind = $mainMod, 3, workspace, 3
        bind = $mainMod, 4, workspace, 4
        bind = $mainMod, 5, workspace, 5
        bind = $mainMod, 6, workspace, 6
        bind = $mainMod, 7, workspace, 7
        bind = $mainMod, 8, workspace, 8
        bind = $mainMod, 9, workspace, 9
        bind = $mainMod, 0, workspace, 10

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        bind = $mainMod SHIFT, 1, movetoworkspacesilent, 1
        bind = $mainMod SHIFT, 2, movetoworkspacesilent, 2
        bind = $mainMod SHIFT, 3, movetoworkspacesilent, 3
        bind = $mainMod SHIFT, 4, movetoworkspacesilent, 4
        bind = $mainMod SHIFT, 5, movetoworkspacesilent, 5
        bind = $mainMod SHIFT, 6, movetoworkspacesilent, 6
        bind = $mainMod SHIFT, 7, movetoworkspacesilent, 7
        bind = $mainMod SHIFT, 8, movetoworkspacesilent, 8
        bind = $mainMod SHIFT, 9, movetoworkspacesilent, 9
        bind = $mainMod SHIFT, 0, movetoworkspacesilent, 10

        # Scroll through existing workspaces with mainMod + scroll
        bind = $mainMod, mouse_down, workspace, e+1
        bind = $mainMod, mouse_up, workspace, e-1

        # Move/resize windows with mainMod + LMB/RMB and dragging
        bindm = $mainMod, mouse:272, movewindow
        bindm = $mainMod, mouse:273, resizewindow

          decoration {

          rounding = 0

          drop_shadow = true
          shadow_range = 4
          shadow_render_power = 3
          col.shadow = rgba(1a1a1aee)
        }

        animations {
          enabled = yes

          bezier = ease,0.4,0.02,0.21,1

          animation = windows, 1, 3.5, ease, slide
          animation = windowsOut, 1, 3.5, ease, slide
          animation = border, 1, 6, default
          animation = fade, 1, 3, ease
          animation = workspaces, 1, 3.5, ease
      }
    '';
  };
}
