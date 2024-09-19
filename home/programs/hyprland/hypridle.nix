{
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        after_sleep_cmd = "hyprctl dispatch dpms on";
        ignore_dbus_inhibit = false;
        lock_cmd = "gtklock";
      };

      listener = [
        {
          timeout = 900;
          on-timeout = "gtklock -b /home/askodon/nixos-conf/home/images/lock.jpg";
        }
        {
          timeout = 1800;
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }
      ];
    };
  };
}
