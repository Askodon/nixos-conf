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
  #boot.blacklistedKernelModules = [ "hyperv_fb" ];

  networking.hostName = "nixos"; #hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  services = { #services list
    xserver.desktopManager.xfce.enable = true; #XFCE4 dekstop
    zerotierone = {
    enable = true;
    joinNetworks = [
      "af415e486f279d61"
    ];
  };
    xserver.desktopManager.xterm.enable = false;
    xserver.displayManager.lightdm.greeters.gtk.enable = true;
    xserver.videoDrivers = ["amdgpu"];
    openssh.enable = true; #openssh
    flatpak.enable = true;
    gnome.gnome-keyring.enable = true;
      xserver = { #layout
      enable = true;
      layout = "ru,us";
      xkbVariant = "";
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
      # Create a `docker` alias for podman, to use it as a drop-in replacement
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
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
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

  # services.xserver.libinput.enable = true;

  #my sweety home 
  users.users.askodon = {
    isNormalUser = true;
    description = "askodon";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      betterbird
      vscode
      papirus-icon-theme
      github-desktop
      podman
      qpwgraph #for discord 
      telegram-desktop
      gamemode
      qogir-theme
      themechanger
      gpick
      volantes-cursors
      gnome.gnome-keyring
      rofi
      transmission-gtk
      gnome.file-roller
      lutris
    ];
    
  #fonts
  };
  fonts = {
    packages = with pkgs; [
      # icon fonts
      material-design-icons
      # normal fonts
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      rubik
      pkgs.jetbrains-mono
      # code font
      (nerdfonts.override {fonts = ["SourceCodePro"];})
    ];
  #fonts settings
  fontconfig.defaultFonts = {
      serif = [ "Noto Serif" "Noto Color Emoji" ];
      sansSerif = [ "Noto Sans" "Noto Color Emoji" ];
      monospace = [ "Sauce Code Pro Nerd Font" ];
      emoji = [ "Noto Color Emoji" ];
    };
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

  #zsh config
  programs.zsh = {
  enable = true;
  enableAutosuggestions = true;
  ohMyZsh.enable = true;
  ohMyZsh.plugins = [ "git" ];
  ohMyZsh.theme = "agnoster";
  syntaxHighlighting.enable = true;     
};

  programs.zsh.shellAliases = {
    l = "ls -alh"; #help
    ll = "ls -l"; #help 
    udal = "ssh askodon@194.113.34.20"; #help
    boot = "sudo nixos-rebuild boot"; #help
    upgrade = "sudo nixos-rebuild switch"; #help
    trash = "sudo nix-collect-garbage -d"; #help
    help = "cat /etc/nixos/configuration.nix | grep help | less"; #help
};

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
    gnome.gnome-screenshot #help
    xfce.xfce4-notifyd
    xfce.xfce4-panel
    xfce.xfce4-docklike-plugin
    xfce.catfish
    xfce.gigolo
    xfce.orage
    xfce.xfburn
    xfce.xfce4-clipman-plugin
    xfce.xfce4-cpugraph-plugin
    xfce.xfce4-dict
    xfce.xfce4-fsguard-plugin
    xfce.xfce4-genmon-plugin
    xfce.xfce4-netload-plugin
    xfce.xfce4-pulseaudio-plugin
    xfce.xfce4-systemload-plugin
    xfce.xfce4-xkb-plugin
    xfce.xfce4-whiskermenu-plugin
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
