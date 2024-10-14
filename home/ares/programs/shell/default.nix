{ pkgs, ... }:
{
  home.packages = with pkgs; [
    deadnix # help deadnix search dead line of nix code
    nix-prefetch-github # ci help: nix-prefetch-github name repo
    dconf2nix # dconf files to nix
    nixfmt-rfc-style # help format nix code
    yazi # help | using like ranger but better
    go
    oh-my-zsh
    zsh-autosuggestions
    wget
    fastfetch
    mtr # help | using command like tracert
    gum
    inetutils
    thefuck
    eza # help | better ls
    bat # help | better cat
    ripgrep # help | better grep
    fd # help | better find
    ncdu # help | better du
    git
    gh # help | github cli
    gitui # help | lazygit alternative
  ];

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh.enable = true;
    oh-my-zsh.plugins = [ "git" ];
    oh-my-zsh.theme = "agnoster";
    initExtra = ''
          eval $(thefuck --alias)
          export PATH=$PATH:~/.spoofdpi/bin
          alias vivaldi="spoofdpi & vivaldi --proxy-server="http://127.0.0.1:8080""
            if [[ -z "$ZELLIJ" ]]; then
          if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
              zellij attach -c
          else
              zellij options --theme "qogir" --disable-mouse-mode
          fi

          if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
              exit
          fi
      fi
    '';
    shellAliases = {
      less = "gum pager";
      ls = "eza";
      cat = "bat";
      grep = "rg";
      find = "fd";
      rm = "rm -i";
      udal = "ssh askodon@194.113.34.20"; # help
      udal2 = "ssh askodon@5.35.84.91";
      boot = "sudo nixos-rebuild boot"; # help
      ed = "/home/askodon/nixos-conf/home/scripts/editor.sh"; # help choice between editor and files in the current folder
      upgrade = "/home/askodon/nixos-conf/home/scripts/upgrade.sh"; # help
      fullUpgrade = "sudo nix-channel --update; /home/askodon/nixos-conf/home/scripts/upgrade.sh"; # help
      trash = "sudo nix-collect-garbage -d"; # help
      help = "cat /home/askodon/nixos-conf/home/programs/shell/default.nix | grep help | gum pager"; # help
      squashGit = "git rebase -i --autosquash HEAD~$(gum write)"; # help
      hs = "gum filter < $HISTFILE --height 20"; # help, history with auto paste
      fmtChoice = "nixfmt $(gum choose --no-limit $(ls))"; # help, nixfmt command with choice
      wallpaper = "/home/askodon/nixos-conf/home/scripts/swww.sh"; # help
      github = "/home/askodon/nixos-conf/home/scripts/github.sh"; # help | login if logout and open gitui
      try = "nix-shell -p "; # help
      f = "fuck"; # help
      x = "exit"; # help
      c = "clear"; # help
      # nix-choose = "sk --ansi -i -c 'nix-search ""{}""'";
    };
  };
}