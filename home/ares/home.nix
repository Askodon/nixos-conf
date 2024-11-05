{ config, pkgs, ... }:
{
  imports = [
    ./programs/awesomeWM/default.nix
    ./programs/shell
    ./programs/gtk-qt-theme/default.nix
    ./programs/picom/default.nix
    ./programs/kitty/default.nix
    ./programs/nvchad/default.nix
  ];
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      # allow unfree
      "obsidian"
      "vivaldi"
    ];

  home = {
    username = "askodon";
    homeDirectory = "/home/askodon";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
      # Desktop
      betterbird
      mate.eom # Photo
      mate.atril # Pdf
      mate.engrampa # Archive manager
      transmission_4-gtk # Torrent
      mpv
      keepassxc
      vivaldi
      obsidian
      nextcloud-client
      antares
      libreoffice
      firefox
      love # For make gui apps
      #

      # Gnome packages
      gnome.dconf-editor
      #

      #fonts
      (pkgs.nerdfonts.override {
        fonts = [
          "FiraCode"
          "RobotoMono"
        ];
      })
      font-awesome
      #

      # video and audio
      obs-studio
      #

    ];
  };
}
