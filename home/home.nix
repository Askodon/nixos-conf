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
    ./programs/firefox/default.nix
    ./programs/xdg/default.nix
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
