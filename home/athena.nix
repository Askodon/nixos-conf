{ config, pkgs, ... }:
{
  imports = [
    ./programs/shell/default.nix
    ./programs/nvchad/default.nix
    ./programs/firefox/default.nix
    ./programs/alacritty/default.nix
    #./programs/gtk-qt-theme/default.nix
    ./programs/kde-settings/default.nix
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
    stateVersion = "24.11";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
      # desktop
      vscode
      transmission_4-gtk # torrent
      mpv
      keepassxc
      vivaldi
      obsidian
      nextcloud-client
      antares
      libreoffice
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
      #

    ];
  };
}
