{ pkgs, lib, ... }:
{
  xdg.portal = {
    extraPortals = lib.mkForce [ pkgs.xdg-desktop-portal-hyprland ];
  };

  #hyprwm
  programs.hyprland.enable = true;
  services.xserver.displayManager.gdm = {
    wayland = true;
    enable = true;
  };
}
