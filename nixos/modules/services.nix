{ pkgs, lib, ... }:
{
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = lib.mkForce [
      pkgs.xdg-desktop-portal-gtk
    ];
  };
  services = {
    # services list
    #flatpak.remotes = { 
    #"flathub" = "https://dl.flathub.org/repo/flathub.flatpakrepo"; 
    #};    
    libinput.enable = true;
    tailscale.enable = true;
    avahi.enable = false;
    openssh.enable = true; # openssh
    flatpak.enable = true;
    kmscon = {
      # better tty
      enable = true;
      fonts = [
        {
          name = "FiraCode Nerd Font";
          package = (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; });
        }
      ];

    };
    gnome.gnome-keyring.enable = true;
    xserver = {
      enable = true;
      xkb.layout = "ru,us";
      xkb.variant = "";
      xkb.options = "grp:win_space_toggle";
      #deviceSection = ''Option "TearFree" "true"''; # For amdgpu.
      #videoDrivers = [ "amdgpu" ]; # amdgpu for home pc
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
