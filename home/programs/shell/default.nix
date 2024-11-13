{ pkgs, ... }:
{
  imports = [
    ./zellij.nix
    ./btop.nix
  ];
  home.packages = with pkgs; [
    deadnix # help deadnix search dead line of nix code
    dconf2nix # dconf files to nix
    nixfmt-rfc-style # help format nix code
    go
    wget
    fastfetch
    mtr # help | using command like tracert
    gum
    inetutils
    bat # help | better cat
    ripgrep # help | better grep
    fd # help | better find
    ncdu # help | better du
    git
    gh # help | github cli
    gitui # help | lazygit alternative
  ];
  programs.yazi = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.thefuck = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.carapace = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.nushell = {
    enable = true;
    configFile = { text = ''
    $env.config = {
  show_banner: false
}
    let $config = {
      fil: false
      use_ls_colors: true
    }
def start_zellij [] {
  if 'ZELLIJ' not-in ($env | columns) {
    if 'ZELLIJ_AUTO_ATTACH' in ($env | columns) and $env.ZELLIJ_AUTO_ATTACH == 'true' {
      zellij attach -c
    } else {
      zellij options --theme "qogir" --disable-mouse-mode
    }

    if 'ZELLIJ_AUTO_EXIT' in ($env | columns) and $env.ZELLIJ_AUTO_EXIT == 'true' {
      exit
    }
  }
}

# author:
# https://www.grailbox.com/2023/07/autostart-zellij-in-nushell/
start_zellij
  '';
};
    shellAliases = {
      less = "gum pager";
      grep = "rg";
      find = "fd";
      rm = "rm -i";
      ed = "/home/askodon/nixos-conf/home/scripts/ed_command.lua"; # help choice between editor and files in the current folder
      squashGit = "git rebase -i --autosquash HEAD~(gum write)"; # help
      fmtChoice = "nixfmt (gum choose --no-limit (ls))";
      github = "/home/askodon/nixos-conf/home/scripts/github.sh"; # help | login if logout and open gitui
      spoofVivaldi = "sh -c 'spoofdpi & vivaldi --proxy-server='http://127.0.0.1:8080'' ";
      try = "nix-shell -p ";
      f = "fuck";
      x = "exit";
      c = "clear";
    };
  };
}
