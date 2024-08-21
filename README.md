git clone
```
sudo rm -r /home/askodon/nixos-conf
git clone https://github.com/Askodon/nixos-conf.git /home/askodon/nixos-conf
sudo nixos-rebuild switch --flake /home/askodon/nixos-conf/nixos/
home-manager --flake /home/askodon/nixos-conf/nixos switch
```
#image
![pre](/screenshot/pre.png)
