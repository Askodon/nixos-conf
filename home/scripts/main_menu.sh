#!/bin/sh

SELECTION="$(printf "1 - Power Menu\n2 - Screenshot Menu\n3 - App selecter\n4 - Clipboard History\n5 - Color Picker" | fuzzel -w 40 -y 40 -f "Roboto"-12 --line-height=20 --dmenu -l 7 -p "Type: ")"

case $SELECTION in
	*"Power Menu")
		/home/askodon/nixos-conf/home/scripts/powermenu.sh;;
	*"Screenshot Menu")
		/home/askodon/nixos-conf/home/scripts/hyprshot.sh;;
    *"App selecter")
        ags -t applauncher;;
	*"Clipboard History")
		/home/askodon/nixos-conf/home/scripts/clipboard.sh;;
	*"Color Picker")
		sleep 0,5 ; notify-send $(hyprpicker -a);;
esac
