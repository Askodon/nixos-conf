#!/bin/sh
git clone https://github.com/vinceliuice/Qogir-theme.git /home/askodon/Загрузки/qogir
/home/askodon/Загрузки/qogir/install.sh -l -c dark
sudo cp -r /home/askodon/nixos-conf/applications /home/askodon/.local/share
sudo cp /home/askodon/nixos-conf/chrome /home/askodon/.mozilla/firefox/dbmi88ob.default
mkdir -p /home/askodon/wallpaper

