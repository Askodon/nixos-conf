{
  imports = [
    ./zellij.nix
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
      export PATH=~/.npm-packages/bin:$PATH 
      export NODE_PATH=~/.npm-packages/lib/node_modules
      export PATH=$PATH:~/.spoofdpi/bin
      alias spoof-chromium="chromium --proxy-server="http://127.0.0.1:8080"& spoofdpi"
        if [[ -z "$ZELLIJ" ]]; then
      if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
          zellij attach -c
      else
          zellij options --theme "qogir"
      fi

      if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
          exit
      fi
  fi
    '';
    shellAliases = {
      ls = "ls -A";
      l = "ls -alh"; # help
      ll = "ls -1A"; # help
      less = "gum pager";
      rm = "rm -i";
      udal = "ssh askodon@194.113.34.20"; # help
      udal2 = "ssh askodon@5.35.84.91";
      boot = "sudo nixos-rebuild boot"; # help
      ed = "/home/askodon/nixos-conf/home/scripts/editor.sh"; # help choice between editor and files in the current folder
      upgrade = "/home/askodon/nixos-conf/home/scripts/upgrade.sh"; # help
      fullUpgrade = "sudo nix-channel --update; sudo nixos-rebuild switch --flake /home/askodon/nixos-conf"; # help
      trash = "sudo nix-collect-garbage -d"; # help
      help = "cat /home/askodon/nixos-conf/home/shell/default.nix | grep help | gum pager"; # help
      squashGit = "git rebase -i --autosquash HEAD~$(gum write)"; # help
      hs = "gum filter < $HISTFILE --height 20"; # help, history with auto paste
      fmtChoice = "nixfmt $(gum choose --no-limit $(ls))"; # help, nixfmt command with choice
      wallpaper = "/home/askodon/nixos-conf/home/scripts/swww.sh"; # helpz
      try = "nix-shell -p "; # help
      f = "fuck"; # help
      x = "exit"; # help
      c = "clear"; # help
      # nix-choose = "sk --ansi -i -c 'nix-search ""{}""'";
    };
  };
}