{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./hypr-env.nix
  ];

  home.packages = with pkgs; [
    swww
    eww
    hyprpicker
    hyprlock
    wl-clipboard-rs
    dunst
    wleave
  ];

  #test later systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    extraConfig = ''
      # Monitor
      exec-once = hyprctl setcursor Bibata-Modern-Classic 24

      #waybar start
      exec-once = waybar

      #dunst notifier
      exec-once = dunst

      #hyprctl
      exec-once = hyprctl setcursor Bibata-Modern-Classic

      #windowrule
      windowrule = float, pwvucontrol 

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
      bind = $mainMod, G, fullscreen,
      bind = $mainMod, Q, killactive
      bind = $mainMod, B, exec, chromium
      bind = $mainMod, C, exec, hyprpicker -a
      bind = $mainMod, F, exec, firefox 
      bind = $mainMod, T, exec, wezterm
      bind = $mainMod, X, exec, wlogout
      bind = $mainMod, M, exit,
      bind = $mainMod, E, exec, thunar
      bind = $mainMod, V, togglefloating,
      bind = $mainMod, w, exec, /home/askodon/nixos-conf/scripts/rofi/launcher.sh
      bind = $mainMod, R, exec, rofiWindow
      bind = $mainMod, P, pseudo, # dwindle
      bind = $mainMod, J, togglesplit, # dwindle

      # Switch Keyboard Layouts
      bind = $mainMod, SPACE, exec, hyprctl switchxkblayout teclado-gamer-husky-blizzard next

      bind = , Print, exec, grim -g "$(slurp)" - | wl-copy
      bind = SHIFT, Print, exec, grim -g "$(slurp)"

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
      bind = $mainMod, left, movefocus, l
      bind = $mainMod, right, movefocus, r
      bind = $mainMod, up, movefocus, u
      bind = $mainMod, down, movefocus, d

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
      bind = $mainMod SHIFT, 1, movetoworkspace, 1
      bind = $mainMod SHIFT, 2, movetoworkspace, 2
      bind = $mainMod SHIFT, 3, movetoworkspace, 3
      bind = $mainMod SHIFT, 4, movetoworkspace, 4
      bind = $mainMod SHIFT, 5, movetoworkspace, 5
      bind = $mainMod SHIFT, 6, movetoworkspace, 6
      bind = $mainMod SHIFT, 7, movetoworkspace, 7
      bind = $mainMod SHIFT, 8, movetoworkspace, 8
      bind = $mainMod SHIFT, 9, movetoworkspace, 9
      bind = $mainMod SHIFT, 0, movetoworkspace, 10

      # Scroll through existing workspaces with mainMod + scroll
      bind = $mainMod, mouse_down, workspace, e+1
      bind = $mainMod, mouse_up, workspace, e-1

      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod, mouse:273, resizewindow
      bindm = ALT, mouse:272, resizewindow

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