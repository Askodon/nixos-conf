[![NixOS Unstable](https://img.shields.io/badge/NixOS-24.05-blue.svg?style=flat-square&logo=NixOS&logoColor=white)](https://nixos.org)

#image
![rice](./home/images/hypr-rice.png)


```plaintext
.
├── home          # Common home-manager configuration for all hosts.
├──── help        # Help info
├──── images 🎨   # All scrennshots, icons and etc
├──── programs 🔧 # Programs settings on nix
├──── scripts     # Sh files
├── nixos 💻      # Nixos base configuration
└──── modules ⚙️
```
Tools list:

| Tool               | Programs
| ------------------ | ------------------
| 🪟 Window Manager  | Hyprland          
| 🖥️ lock            | Gtklock          
| 📊 Bar             | waybar             
| 🚀 Launcher        | Rofi-wayland      
| 🎨 GTK Theme       | Qogir-Dark     
| 🖥️ Terminal        | Foot              
| 🔔 Notifications   | Swaynotificationcenter   

> [!IMPORTANT]
> add this too configuration.nix:
> nix.settings.experimental-features = [ "nix-command" "flakes" ];

First install
```
git clone https://github.com/Askodon/nixos-conf.git /home/askodon/nixos-conf
sudo /home/askodon/nixos-conf/home/scripts/new_install.sh
```

Update
```
git reset --hard origin/branch-name
upgrade
```
