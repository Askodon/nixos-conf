#!/bin/sh

SELECTION="$(printf "1 - Log out\n2 - Reboot\n3 - Reboot to UEFI\n4 - Hard reboot\n5 - Shutdown" | fuzzel -w 40 -y 40 -f "Roboto"-12 --line-height=20 --dmenu -l 7 -p "Power Menu: ")"

case $SELECTION in
	*"Log out")
		hyprctl dispatch exit;;
	*"Reboot")
		systemctl reboot;;
	*"Reboot to UEFI")
		systemctl reboot --firmware-setup;;
	*"Shutdown")
		systemctl poweroff;;
esac
