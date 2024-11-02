{ pkgs, lib, ... }:
{
  xdg.portal = {
    extraPortals = lib.mkForce [ pkgs.xdg-desktop-portal-hyprland ];
  };

  boot.kernelPackages = pkgs.linuxPackages_xanmod_stable; # test

  #hyprwm
  programs.hyprland.enable = true;
  services.xserver.displayManager.gdm = {
    wayland = true;
    enable = true;
  };
}
