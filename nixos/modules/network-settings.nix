{
  networking.hostName = "nixos"; # hostname
  networking.networkmanager.enable = true; # network manager
  networking.nameservers = [
    "1.1.1.1"
    "8.8.8.8"
  ]; # dns
  #networking.wg-quick.interfaces = {
  # wg0 = {
  #  address = [ "10.8.1.5/32" ];
  # dns = [ "1.1.1.1" "1.0.0.1" ];
  # privateKey = "lUh+bh0gBuj7MZoGzwK4qzCXL6IyY2AEGYwpJBHy124=";

  # peers = [
  #  {
  #   publicKey = "{4AQugG8IohbkjWuwqcA85682IgE8Fq1OftERmElXXmA=}";
  #  presharedKey = "fgwkBQTW+48V8gXPahx2EWvD/mdVG5/At0rJtAdsAyU=";
  # allowedIPs = [ "0.0.0.0/0" "::/0" ];
  #endpoint = "{194.113.34.25}:491123";
  #persistentKeepalive = 25;
  #}
  #];
  #};
  #};
}
