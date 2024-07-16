my nix conf
```
sudo rm -r nixos
git clone https://github.com/Askodon/nixos.git
cd nixos
sudo cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
cp -r rofi /home/askodon/.config
sudo rm -r /home/askodon/.config/home-manager
mkdir /home/askodon/.config/home-manager
sudo cp home.nix /home/askodon/.config/home-manager
home-manager switch
dconf load /org/cinnamon/ < cinnamon.dconf
dconf load /org/nemo/ < nemo.dconf
dconf load /org/gtk/ < gtk.dconf
dconf load /org/gnome/ < gnome.dconf
mkdir /home/askodon/wallpaper
```
#image
![pre](pre.png)
