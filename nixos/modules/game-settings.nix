{ pkgs, ... }:
{
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
  };
}
