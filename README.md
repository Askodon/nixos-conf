my nix conf
```
git clone https://github.com/Askodon/nixos.git
cd nixos
cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
cp NixOs.svg /home/askodon/NixOs.svg
cp tint2rc /home/askodon/.config/tint2/tint2rc
cp rofi /home/askodon/.config
cp xfce-perchannel-xml /home/askodon/.config/xfce4/xfconf/xfce-perchannel-xml/
```
