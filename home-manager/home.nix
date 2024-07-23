{ config, pkgs, ... }:
{
  imports = [
    ./all.nix
    ./keyboard.nix
  ];
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      # allow unfree
      "vscode"
    ];

  home = {
    username = "askodon";
    homeDirectory = "/home/askodon";
    stateVersion = "24.05";
    packages = with pkgs; [
      betterbird
      vscode
      github-desktop
      podman
      qpwgraph
      gamemode
      gpick
      gnome.gnome-keyring
      rofi
      transmission-gtk
      qogir-theme
      papirus-icon-theme
      vlc
      fira-code
      roboto
      keepassxc
      ryujinx
      vesktop
      deadnix # help deadnix search dead line of nix code
      nix-prefetch-github # help: nix-prefetch-github name repo
      dconf2nix # dconf files to nix
      nixfmt-rfc-style # help format nix code
      nix-init #help auto prefetch and search build
      go
      pavucontrol
      yazi # help | using like ranger but better
      oh-my-zsh
      zsh-autosuggestions
      btop
      helix # help | using: "hx", vim-like editor
      lact
      firefox
      wget
      gnome.dconf-editor
    ];
  };
  programs.git = {
    enable = true;
    userEmail = "askodon@disroot.org";
    userName = "asko";
  };

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh.enable = true;
    oh-my-zsh.plugins = [ "git" ];
    oh-my-zsh.theme = "agnoster";
    shellAliases = {
      l = "ls -alh"; # help
      ll = "ls -l"; # help
      udal = "ssh askodon@194.113.34.20"; # help
      boot = "sudo nixos-rebuild boot"; # help
      upgrade = "sudo nixos-rebuild switch; home-manager switch"; # help
      fullUpgrade = "sudo nix-channel --update; sudo nixos-rebuild switch; home-manager switch"; # help
      trash = "sudo nix-collect-garbage -d"; # help
      help = "cat /home/askodon/.config/home-manager/home.nix | grep help | less"; # help
    };
  };
}
