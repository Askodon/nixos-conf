{ config, pkgs, ... }:
{
  imports = [
    ./programs/gtk/default.nix
    ./programs/hyprland/default.nix
    ./programs/shell/default.nix
    ./programs/shell/foot.nix
    ./programs/shell/zellij.nix
    ./programs/waybar/default.nix
  ];
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      # allow unfree
      "vscode"
      "obsidian"
    ];

  home = {
    username = "askodon";
    homeDirectory = "/home/askodon";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
      # desktop
      betterbird
      vscode
      podman # container
      cinnamon.pix # photo
      gcolor3 # see colour on desktop
      amberol # music
      transmission_4-gtk # torrent
      qogir-theme
      bibata-cursors
      whitesur-icon-theme
      vlc
      keepassxc
      vesktop
      firefox
      ungoogled-chromium
      obsidian
      nextcloud-client
      antares
      libreoffice
      kdePackages.okular
      #

      # gnome packages
      gnome.dconf-editor
      #

      #fonts
      fira-code
      fira-code-nerdfont
      nerdfonts
      roboto
      #

      #terminal util
      deadnix # help deadnix search dead line of nix code
      nix-prefetch-github # ci help: nix-prefetch-github name repo
      dconf2nix # dconf files to nix
      nixfmt-rfc-style # help format nix code
      nix-init # help auto prefetch and search build
      helix # help | using: "hx", vim-like editor
      yazi # help | using like ranger but better
      python312Packages.howdoi # help auto answer
      tun2socks
      go
      oh-my-zsh
      zsh-autosuggestions
      btop
      wget
      gamemode
      appimage-run
      fastfetch
      mtr # help | using command like tracert
      gum
      inetutils
      thefuck
      gh
      #

      #video and audio
      obs-studio
      gpu-screen-recorder-gtk # using only gpu to record
      handbrake
      tenacity
      #

    ];
  };
  programs.git = {
    enable = true;
    userEmail = "askodon@disroot.org";
    userName = "asko";
  };
}
