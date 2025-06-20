{ config, pkgs, ... }:
{
  imports = [
    ./programs/shell/default.nix
  ];
  home.stateVersion = "25.05"; # Please read the comment before changing.
  home.packages = with pkgs; [

  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    EDITOR = "vi";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
