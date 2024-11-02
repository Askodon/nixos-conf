#!/bin/sh

run() {
    if ! pgrep -f "$1"; then
        "$@" &
    fi
}

run "picom" -b &
run "flameshot" &
run "clipmenud" &
run "nm-applet" &
run "nextcloud" &
run "/home/askodon/nixos-conf/home/scripts/autorun.sh" &
