full imperative cinnamon desktop install
```

sudo rm -r nixos-conf
git clone https://github.com/Askodon/nixos-conf.git
cd nixos-conf
sudo cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
cp -r rofi /home/askodon/.config
sudo rm -r /home/askodon/.config/home-manager
mkdir /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/home.nix /home/askodon/.config/home-manager
sudo cp /home/askodon/nixos-conf/all.nix /home/askodon/.config/home-manager
home-manager switch
mkdir /home/askodon/wallpaper
```
#image
![pre](/screenshot/pre.png)
