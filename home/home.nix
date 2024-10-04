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

      # video and audio
      obs-studio
      handbrake
      tenacity
      #

    ];
  };
}
