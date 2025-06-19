{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zellij
    gum
    just
    nh
  ];

  nix = {
    settings.experimental-features = "nix-command flakes";
    enable = false;
  };

  programs.zsh.enable = true;
  system.stateVersion = 6;
  nixpkgs.hostPlatform = "aarch64-darwin";

  users.users.askodon = {
    name = "askodon";
    home = "/Users/askodon";
  };
}
