#!/bin/sh
#TYPE="$(printf "1 - Only clipboard\n2 - Open File\n3 - Normal" | fuzzel -w 40 -y 40 -f "Roboto"-12 --line-height=20 --dmenu -l 7 -p "Clipboard and other: ")"
SELECTION="$(printf "1 - Fullscreen\n2 - Window\n3 - Region" | fuzzel -w 40 -y 40 -f "Roboto"-12 --line-height=20 --dmenu -l 7 -p "Screenshot type: ")"

case $SELECTION in
	*"Fullscreen")
		hyprshot -m output --clipboard-only;;
	*"Window")
		hyprshot -m window --clipboard-only;;
	*"Region")
		hyprshot -m region --clipboard-only;;
esac


#hyprshot -o /home/askodon/Скриншоты -m region -- eom


