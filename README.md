my nix conf
```
git clone https://github.com/Askodon/nixos.git
cd nixos
cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
cp /home/askodon/nixos/gtk.css /home/askodon/.config/gtk-3.0/gtk.css
cp -r rofi /home/askodon/.config
cp -r xfce-perchannel-xml /home/askodon/.config/xfce4/xfconf/xfce-perchannel-xml/
```
