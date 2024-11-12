{ pkgs, ... }:
{
  boot.kernelPackages = pkgs.linuxPackages_xanmod_stable; # test

  programs = {
    gamescope.enable = true;
    gamemode.enable = true;
    noisetorch.enable = true;
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
      #gamescopeSession.enable = true; #test
    };
  };

  hardware = {
    steam-hardware.enable = true;
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
      rocmPackages.clr.icd
    ];
    };
  };
}
