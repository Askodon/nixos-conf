[![NixOS Unstable](https://img.shields.io/badge/NixOS-24.05-blue.svg?style=flat-square&logo=NixOS&logoColor=white)](https://nixos.org)

> [!IMPORTANT]
> add this too configuration.nix
> nix.settings.experimental-features = [ "nix-command" "flakes" ];

Git clone
```
sudo rm -r /home/askodon/nixos-conf
git clone https://github.com/Askodon/nixos-conf.git /home/askodon/nixos-conf
sudo nixos-rebuild switch --flake /home/askodon/nixos-conf/nixos/
```
#image
![pre](/screenshot/pre.png)
