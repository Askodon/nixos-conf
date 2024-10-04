{ config, pkgs, ... }:
{
  imports = [
    ./programs/gtk/default.nix
    ./programs/hyprland/default.nix
    ./programs/shell/default.nix
    ./programs/foot/default.nix
    ./programs/waybar/default.nix
    ./programs/fuzzel/default.nix
    ./programs/dunst/default.nix
    ./programs/nvchad/default.nix
    ./programs/ags/default.nix
    ./programs/vesktop/default.nix
  ];
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      # allow unfree
      "vscode"
      "obsidian"
      "vivaldi"
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
      mate.eom # photo
      transmission_4-gtk # torrent
      qogir-theme
      tela-circle-icon-theme
      bibata-cursors
      mpv
      keepassxc
      firefox
      vivaldi
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
      font-awesome
      #

      # terminal util
      deadnix # help deadnix search dead line of nix code
      nix-prefetch-github # ci help: nix-prefetch-github name repo
      dconf2nix # dconf files to nix
      nixfmt-rfc-style # help format nix code
      yazi # help | using like ranger but better
      go
      oh-my-zsh
      zsh-autosuggestions
      wget
      fastfetch
      mtr # help | using command like tracert
      gum
      inetutils
      thefuck
      eza # help | better ls
      bat # help | better cat
      ripgrep # help | better grep 
      fd # help | better find
      ncdu # help | better du
      #

      # video and audio
      obs-studio
      handbrake
      tenacity
      #

    ];
  };
}
