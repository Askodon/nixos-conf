{
  programs.hyprlock = {
    enable = true;
    extraConfig = ''
background {
    monitor =
    path = $HOME/Wallpapers/m-26.jp/beach.png  # only png supported for now
    color = $color7

    # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
    blur_size = 5
    blur_passes = 0 # 0 disables blurring
    noise = 0.0117
    contrast = 1.3000 # Vibrant!!!
    brightness = 0.8000
    vibrancy = 0.2100
    vibrancy_darkness = 0.0
}

input-field {
    monitor =
    size = 250, 50
    outline_thickness = 3
    dots_size = 0.2 # Scale of input-field height, 0.2 - 0.8
    dots_spacing = 1.00 # Scale of dots' absolute size, 0.0 - 1.0
    dots_center = true
    outer_color = $color0
    inner_color = $color0
    font_color = $color7
    fade_on_empty = true
    placeholder_text = <i>Password...</i> # Text rendered in the input box when it's empty.
    hide_input = false
    position = 0, 60
    halign = center
    valign = bottom
}


# Current time
label {
    monitor =
    text = cmd[update:1000] echo "<b><big> $(date +"%H") </big></b>"
    color = white
    font_size = 128
    font_family = IBM Plex Sans Medium 10
    position = 0, 20
    halign = center
    valign = center
}
label {
    monitor =
    text = cmd[update:1000] echo "<b><big> $(date +"%M") </big></b>"
    color = white
    font_size = 128
    font_family = IBM Plex Sans Medium 10
    position = 0, -140
    halign = center
    valign = center
}
label {
    monitor =
    text = cmd[update:1000] echo "<b><big> $(date +"%d %b") </big></b>"
    color = $color3
    font_size = 16
    font_family = IBM Plex Sans Medium 10
    position = 0, -160
    halign = center
    valign = center
}
label {
    monitor =
    text = cmd[update:1000] echo "<b><big> $(date +"%A") </big></b>"
    color = $color3
    font_size = 16
    font_family = IBM Plex Sans Medium 10
    position = 0, -180
    halign = center
    valign = center
}



label {
    monitor =
    text = cmd[update:86400000] echo "<b><big> $(bash /home/prtyksh/.config/hypr/city.sh) </big></b>"
    color = black
    font_size = 32
    font_family = SF Pro Rounded 
    position = 0, -40 
    halign = center
    valign = top
}

label {
    monitor =
    text = cmd[update:86400000] echo "<b><big>feels like $(bash /home/prtyksh/.config/hypr/weather.sh) </big></b>"
    color = $color3
    font_size = 16
    font_family = SF Pro Rounded
    position = 0, -80
    halign = center
    valign = top
}
    '';
  };
}