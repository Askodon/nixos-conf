{ pkgs, lib, ... }:
{
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
  };
  services = {
    # services list
    #flatpak.remotes = { 
    #"flathub" = "https://dl.flathub.org/repo/flathub.flatpakrepo"; 
    #};
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
      # displayManager.lightdm.greeters.slick = {
      #   enable = true;
      #   iconTheme.package = pkgs.whitesur-icon-theme;
      #   iconTheme.name = "Papirus-Dark";
      #   #font.package = pkgs.roboto;
      #   #font.name = "Roboto Regular";
      #   theme.package = pkgs.qogir-theme;
      #   theme.name = "Qogir-Dark";
      # };
      #desktopManager.cinnamon.enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      #videoDrivers = [ "amdgpu" ]; #amdgpu for home pc
    };
    pipewire = {
      # pipewire
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
