{
  services.dunst.enable = true;
  services.dunst.settings = {
  global = {
    width = 300;
    height = 300;
    offset = "30x50";
    origin = "top-right";
    transparency = 10;
    frame_color = "#eceff1";
    font = "Roboto 9";
  };

  urgency_low = {
    background = "#282c34";
    foreground = "#66cdaa"; #green
    frame_color = "#4d84c4";
    timeout = 10;
  };

  urgency_normal = {
    background = "#282c34";
    foreground = "#eceff1"; #white
    frame_color = "#4d84c4";
    timeout = 10;
  };

  urgency_critical = {
    background = "#282c34";
    foreground = "#d4182a"; #red
    frame_color = "#4d84c4";
    timeout = 10;
  };
};
}