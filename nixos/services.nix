{ pkgs, ... }:
{
  services = {
    # services list
    libinput.enable = true;
    openssh.enable = true; # openssh
    flatpak.enable = true;
    cinnamon.apps.enable = false;
    gnome.gnome-keyring.enable = true;
    xserver = {
      enable = true;
      xkb.layout = "ru,us";
      xkb.variant = "";
      xkb.options = "grp:win_space_toggle";
      displayManager.lightdm.enable = true;
      desktopManager.cinnamon.enable = true;
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
