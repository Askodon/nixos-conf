{ pkgs, lib, ... }:
{
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };
  services = {
    # services list
    #flatpak.remotes = { 
    #"flathub" = "https://dl.flathub.org/repo/flathub.flatpakrepo"; 
    #};
    xserver.excludePackages = [ pkgs.xterm ];
    libinput.enable = true;
    openssh.enable = true; # openssh
    flatpak.enable = true;
    cinnamon.apps.enable = false;
    gnome.gnome-keyring.enable = true;
    gnome.core-utilities.enable = false;
    xserver = {
      enable = true;
      xkb.layout = "ru,us";
      xkb.variant = "";
      xkb.options = "grp:win_space_toggle";
      deviceSection = ''Option "TearFree" "true"''; # For amdgpu.
      #videoDrivers = [ "amdgpu" ]; #amdgpu for home pc
      displayManager.lightdm.greeters.gtk.enable = true;
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
