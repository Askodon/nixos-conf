{ config, pkgs, ... }:
{
  imports = [
    #./all.nix
  ];
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      # allow unfree
      "vscode"
      "obsidian"
      "davinci-resolve"
    ];

  home.sessionVariables.GTK_THEME = "Qogir-Dark";

  home = {
    username = "askodon";
    homeDirectory = "/home/askodon";
    stateVersion = "24.05";
    packages = with pkgs; [
      #desktop
      betterbird
      vscode
      github-desktop
      podman #container 
      qpwgraph #sound tree changer
      cinnamon.pix #photo
      kdePackages.okular #pdf 
      gpick #see colour on desktop
      gnome.file-roller #zip and etc
      gnome.gnome-terminal #console
      gnome.gnome-keyring
      gnome.dconf-editor
      gnome.nautilus
      gnome.gnome-software
      amberol #music 
      rofi
      transmission-gtk #torrent
      qogir-theme
      papirus-icon-theme
      vlc
      fira-code
      roboto
      keepassxc
      ryujinx
      vesktop
      firefox
      obsidian
      nextcloud-client
      beekeeper-studio #sql
      #end
      
      #terminal util
      deadnix # help deadnix search dead line of nix code
      nix-prefetch-github # help: nix-prefetch-github name repo
      dconf2nix # dconf files to nix
      nixfmt-rfc-style # help format nix code
      nix-init #help auto prefetch and search build
      helix # help | using: "hx", vim-like editor
      yazi # help | using like ranger but better
      python312Packages.howdoi #help auto answer
      go
      oh-my-zsh
      zsh-autosuggestions
      btop
      colorls #better ls
      wget
      gamemode
      #end

      #system control
      pavucontrol
      lact
      corectrl #make seession for games
      #end

      #video
      obs-studio
      gpu-screen-recorder-gtk #using only gpu to record
      handbrake
      tenacity
      noisetorch #virtual micro without noise sound
      #end
    ];
  };
  programs.git = {
    enable = true;
    userEmail = "askodon@disroot.org";
    userName = "asko";
  };
  
  programs.gamemode.enable = true;

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh.enable = true;
    oh-my-zsh.plugins = [ "git" ];
    oh-my-zsh.theme = "agnoster";
    shellAliases = {
      ls = "colorls -A";
      l = "colorls -alh"; # help
      ll="colorls -1A"; # help
      udal = "ssh askodon@194.113.34.20"; # help
      boot = "sudo nixos-rebuild boot"; # help
      upgrade = "sudo nixos-rebuild switch; home-manager switch"; # help
      fullUpgrade = "sudo nix-channel --update; sudo nixos-rebuild switch; home-manager switch"; # help
      trash = "sudo nix-collect-garbage -d"; # help
      help = "cat /home/askodon/.config/home-manager/home.nix | grep help | less"; # help
    };
  };
}
