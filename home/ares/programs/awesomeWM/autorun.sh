#!/bin/sh

run() {
    if ! pgrep -f "$1"; then
        "$@" &
    fi
}

#run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1" &
#run "keepassxc" &
#run "xscreensaver" --no-splash &
#run "volumeicon" &
#run "nm-applet" &
#run "ibus-daemon" -drxR &
#run "caffeine" &
#run "feh" --randomize --recursive --bg-fill ~/Pictures/Wallpapers/ &
run "picom" -b &
run "flameshot" &
#run "cbatticon" -n &
# run "" &