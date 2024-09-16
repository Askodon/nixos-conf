{ config, pkgs, ... }:
{
  imports = [
    ./dconf-settings.nix
    ./wezterm.nix
    ./hypr-settings.nix
    ./waybar-settings.nix
    ./theming.nix
  ];
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      # allow unfree
      "vscode"
      "obsidian"
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
      podman # container
      cinnamon.pix # photo
      gcolor3 # see colour on desktop
      amberol # music
      transmission_4-gtk # torrent
      qogir-theme
      bibata-cursors
      whitesur-icon-theme
      vlc
      keepassxc
      vesktop
      firefox
      ungoogled-chromium
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
      #

      #terminal util
      deadnix # help deadnix search dead line of nix code
      nix-prefetch-github # ci help: nix-prefetch-github name repo
      dconf2nix # dconf files to nix
      nixfmt-rfc-style # help format nix code
      nix-init # help auto prefetch and search build
      helix # help | using: "hx", vim-like editor
      yazi # help | using like ranger but better
      python312Packages.howdoi # help auto answer
      tun2socks
      go
      oh-my-zsh
      zsh-autosuggestions
      btop
      wget
      gamemode
      appimage-run
      zellij
      fastfetch
      mtr # help | using command like tracert
      gum
      inetutils
      thefuck
      gh
      #

      #video and audio
      obs-studio
      gpu-screen-recorder-gtk # using only gpu to record
      handbrake
      tenacity
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
    initExtra = ''
      eval $(thefuck --alias)
      export PATH=~/.npm-packages/bin:$PATH 
      export NODE_PATH=~/.npm-packages/lib/node_modules
      export PATH=$PATH:~/.spoofdpi/bin
      alias spoof-chromium="chromium --proxy-server="http://127.0.0.1:8080"& spoofdpi"
    '';
    sessionVariables = {
      EDITOR = "hx";
      TERM = "wezterm";
      TERMINAL = "wezterm";
      BROWSER = "firefox";
    };
    shellAliases = {
      ls = "ls -A";
      l = "ls -alh"; # help
      ll = "ls -1A"; # help
      less = "gum pager";
      rm = "rm -i";
      udal = "ssh askodon@194.113.34.20"; # help
      udal2 = "ssh askodon@5.35.84.91";
      boot = "sudo nixos-rebuild boot"; # help
      ed = "/home/askodon/nixos-conf/scripts/editor.sh"; # help choice between editor and files in the current folder
      sync = "/home/askodon/nixos-conf/scripts/sync.sh"; # help cp home config
      upgrade = "/home/askodon/nixos-conf/scripts/upgrade.sh"; # help
      fullUpgrade = "sudo nix-channel --update; sudo nixos-rebuild switch --flake /home/askodon/nixos-conf/nixos/"; # help
      trash = "sudo nix-collect-garbage -d"; # help
      help = "cat /home/askodon/.config/home-manager/home.nix | grep help | gum pager"; # help
      squashGit = "git rebase -i --autosquash HEAD~$(gum write)"; # help
      hs = "gum filter < $HISTFILE --height 20"; # help, history with auto paste
      fmtChoice = "nixfmt $(gum choose --no-limit $(ls))"; # help, nixfmt command with choice
      wallpaper = "/home/askodon/nixos-conf/scripts/swww.sh"; # helpz
      try = "nix-shell -p "; # help
      f = "fuck"; # help
      x = "exit"; # help
      c = "clear"; # help
      # nix-choose = "sk --ansi -i -c 'nix-search ""{}""'";
    };
  };
}
