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
    ];

  home.sessionVariables.GTK_THEME = "Qogir-Dark";

  home = {
    username = "askodon";
    homeDirectory = "/home/askodon";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
      # desktop
      betterbird
      vscode
      cinnamon-control-center
      podman # container
      qpwgraph # sound tree changer
      pix # photo
      kdePackages.okular # pdf
      gpick # see colour on desktop
      amberol # music
      rofi
      transmission_4-gtk # torrent
      qogir-theme
      papirus-icon-theme
      vlc
      fira-code
      fira-code-nerdfont
      roboto
      keepassxc
      ryujinx
      vesktop
      firefox
      obsidian
      nextcloud-client
      antares
      #

      # gnome packages
      file-roller # zip and etc
      gnome-terminal # console
      gnome-keyring
      dconf-editor
      nautilus
      gnome.gnome-software
      gnome-screenshot
      #

      #terminal util
      deadnix # help deadnix search dead line of nix code
      nix-prefetch-github #ci help: nix-prefetch-github name repo
      dconf2nix # dconf files to nix
      nixfmt-rfc-style # help format nix code
      nix-init # help auto prefetch and search build
      helix # help | using: "hx", vim-like editor
      yazi # help | using like ranger but better
      python312Packages.howdoi # help auto answer
      go
      oh-my-zsh
      zsh-autosuggestions
      btop
      colorls # better ls
      wget
      gamemode
      appimage-run
      zellij
      skim
      nix-search-cli
      #

      #system control
      pavucontrol
      lact
      corectrl # make seession for games
      #

      #video and audio
      obs-studio
      gpu-screen-recorder-gtk # using only gpu to record
      handbrake
      tenacity
      noisetorch # virtual micro without noise sound
      #

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
    sessionVariables = {
      EDITOR = "hx";
    };
    shellAliases = {
      ls = "ls -A";
      l = "ls -alh"; # help
      ll = "ls -1A"; # help
      less = "gum pager";
      rm = "rm -i";
      udal = "ssh askodon@194.113.34.20"; # help
      boot = "sudo nixos-rebuild boot"; # help
      ed = "/home/askodon/nixos-conf/scripts/editor.sh"; # help choice between editor and files in the current folder
      sync = "/home/askodon/nixos-conf/scripts/sync.sh"; # help cp home config
      upgrade = "/home/askodon/nixos-conf/scripts/upgrade.sh"; # help
      fullUpgrade = "sudo nix-channel --update; sudo nixos-rebuild switch --flake /home/askodon/nixos-conf/nixos/ ; home-manager switch"; # help
      trash = "sudo nix-collect-garbage -d"; # help
      help = "cat /home/askodon/.config/home-manager/home.nix | grep help | gum pager"; # help
      squashGit = "git rebase -i --autosquash HEAD~$(gum write)"; # help
      hs = "gum filter < $HISTFILE --height 20"; # help, history with auto paste
      fmtChoice = "nixfmt $(gum choose --no-limit $(ls))"; # help, nixfmt command with choice
      #nix-choose = "sk --ansi -i -c 'nix-search ""{}""'";
    };
  };
}
