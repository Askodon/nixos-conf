{
    home = {
    username = "tsumoron";
    homeDirectory = "/home/tsumoron";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
      #fonts
      (pkgs.nerdfonts.override { fonts = [ "FiraCode" "RobotoMono" ]; })
      font-awesome
      #
    ];
  };
}