{ config, pkgs, ... }:
{
  imports = [
    ./programs/hyprland/default.nix
    ./programs/shell/default.nix
    ./programs/foot/default.nix
    ./programs/waybar/default.nix
    ./programs/fuzzel/default.nix
    ./programs/dunst/default.nix
    ./programs/nvchad/default.nix
    ./programs/ags/default.nix
    ./programs/vesktop/default.nix
    ./programs/firefox/default.nix
    ./programs/gtk-qt-theme/default.nix
    ./programs/nix-scripts/default.nix
  ];
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      # allow unfree
      "vscode"
      "obsidian"
      "vivaldi"
      "davinci-resolve"
    ];

  home = {
    username = "askodon";
    homeDirectory = "/home/askodon";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
      # desktop
      #betterbird
      vscode
      mate.eom # Photo
      mate.atril # Pdf
      mate.engrampa # Archive manager
      transmission_4-gtk # torrent
      mpv
      keepassxc
      vivaldi
      obsidian
      nextcloud-client
      antares
      libreoffice
      davinci-resolve
      ffmpeg
      #

      # gnome packages
      dconf-editor
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
      handbrake
      tenacity
      #

    ];
  };
}
