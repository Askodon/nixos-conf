{ config, pkgs, ... }:
{
  imports = [
    ./programs/awesomWM/default.nix
    ./programs/shell
    ./programs/nvchad/default.nix
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
      mpv
      keepassxc
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
      (pkgs.nerdfonts.override { fonts = [ "FiraCode" "RobotoMono" ]; })
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
