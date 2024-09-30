#!/bin/sh
TYPE="$(printf "1 - Only Clipboard\n2 - Open File\n3 - Normal" | fuzzel -w 40 -y 40 -f "Roboto"-12 --line-height=20 --dmenu -l 7 -p "Clipboard and other: ")"

if [ -z "$TYPE" ]; then
  exit 1 
fi

SELECTION="$(printf "1 - Fullscreen\n2 - Window\n3 - Region" | fuzzel -w 40 -y 40 -f "Roboto"-12 --line-height=20 --dmenu -l 7 -p "Screenshot type: ")"

case $TYPE in
	*"Only Clipboard")
		KEY="--clipboard-only";;
	*"Open File")
    KEY="-o /home/askodon/Скриншоты -- eom";;
	*"Normal")
    KEY="-o /home/askodon/Скриншоты";;
esac


case $SELECTION in
	*"Fullscreen")
    hyprshot -m output $KEY;;
	*"Window")
		hyprshot -m window $KEY;;
	*"Region")
		hyprshot -m region $KEY;;
esac


#hyprshot -o /home/askodon/Скриншоты -m region -- eom


