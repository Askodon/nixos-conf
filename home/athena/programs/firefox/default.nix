{ pkgs, ... }:
{
  programs.firefox = {
    enable = true;
    #nativeMessagingHosts.packages = [ pkgs.tridactyl-native ];
    #nativeMessagingHosts.tridactyl = true;

  };
}
