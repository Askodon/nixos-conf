#conf
{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix # Include the results of the hardware scan.
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  #ONLY FOR HYPER-V! DELETE THIS IF YOUR USING ON HOME-PC|||
  boot.blacklistedKernelModules = [ "hyperv_fb" ];
  boot.kernelPackages = pkgs.linuxPackages_xanmod_stable; #test

  networking.hostName = "nixos"; #hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  services.libinput.enable = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  
  services = { #services list
    xserver.displayManager.lightdm.enable = true;
    xserver.desktopManager.cinnamon.enable = true; 
    #xserver.videoDrivers = [ "amdgpu" ]; #amdgpu for home pc
    zerotierone = {
    enable = true;
    joinNetworks = [
      "af415e486f279d61"
    ];
  };
    openssh.enable = true; #openssh
    flatpak.enable = true;
    gnome.gnome-keyring.enable = true;
      xserver = {
      enable = true;
      xkb.layout = "ru,us";
      xkb.variant = "";
    };
      pipewire = { #pipewire
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };

  # Enable networking
  networking.networkmanager.enable = true;
  # Set your time zone.
  time.timeZone = "Europe/Samara";
  # Select internationalisation properties.
  i18n.defaultLocale = "ru_RU.UTF-8";

  #needs podamn
  virtualisation.containers.enable = true;
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };

  #flatpak error fix
  xdg.portal= {
    xdgOpenUsePortal = true;
    enable = true;
    #extraPortals = [ pkgs.xdg-desktop-portal-gtk ]; #failed to build
  };
  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  hardware.steam-hardware.enable = true;
  security.rtkit.enable = true;

  hardware.opengl = { #gaming
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  #my sweety home 
  users.users.askodon = {
    isNormalUser = true;
    description = "askodon";
    extraGroups = [ "networkmanager" "wheel" ];    
  };

  #add swap file 
  swapDevices = [{
    device = "/swapfile";
    size = 2 * 1024; # 2GB
  }];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  #zsh as default
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    lact
    firefox
    wget
    git
    helix #help | using: "hx", vim-like editor
    fastfetch
    zsh
    oh-my-zsh
    firefox
    zsh-autosuggestions
    btop
    qt5.qtwayland
    qt6.qmake
    qt6.qtwayland
    adwaita-qt
    adwaita-qt6
    home-manager
    go
    pavucontrol
    yazi # help | using like ranger but better
    mtr #help | using command like tracert
    nix-prefetch-github #help: nix-prefetch-github name repo
  ];

  #ufw like?????
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; #system version
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; #experimental features
}
