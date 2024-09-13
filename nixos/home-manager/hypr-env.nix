{ config, pkgs, ... }:

{
  home = {
    sessionVariables = {
      EDITOR = "hx";
      BROWSER = "firefox";
      TERMINAL = "kitty";
      __GL_VRR_ALLOWED = "1";
      WLR_RENDERER = "vulkan";
      CLUTTER_BACKEND = "wayland";      
      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
      QT_QPA_PLATFORMTHEME = "qt6ct";
    };
  };
}
