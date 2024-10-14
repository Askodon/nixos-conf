{
  #my sweety home 
  users.users.askodon = {
    isNormalUser = true;
    description = "askodon";
    extraGroups = [
      "networkmanager"
      "wheel"
      "gamemode"
      "libvirtd"
    ];
  };
  #user fot testing
  users.users.tsumoron = {
  isNormalUser = true;
  description = "askodon";
  extraGroups = [
    "networkmanager"
    "wheel"
    "gamemode"
    "libvirtd"
    ];
  };
}
