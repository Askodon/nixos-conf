[![NixOS Unstable](https://img.shields.io/badge/NixOS-24.05-blue.svg?&logo=NixOS&logoColor=white)](https://nixos.org)
[![Repo Size](https://img.shields.io/github/repo-size/askodon/nixos-conf?label=Repo%20Size)]()
[![Linux](https://img.shields.io/badge/Linux-%23.svg?logo=linux&color=FCC624&logoColor=black)](https://www.linux.org/)


## Image
![rice](./home/images/hypr-rice.png)


## Structure
```plaintext
.
├── home 🏠       # Common home-manager configuration for all hosts.
├──── help 📚     # Help info
├──── images 🎨   # All scrennshots, icons and etc
├──── programs 🔧 # Programs settings on nix
├──── scripts 🚀  # Sh files
├── nixos 💻      # Nixos base configuration
└──── modules ⚙️   #user settings, services and etc
```
##Tools

| Tool               | Programs
| ------------------ | ------------------
| 🪟 Window Manager  | Hyprland          
| 🖥️ lock            | Gtklock          
| 📊 Bar             | waybar             
| 🚀 Launcher        | Rofi-wayland      
| 🎨 GTK Theme       | Qogir-Dark     
| 🖥️ Terminal        | Foot              
| 🔔 Notifications   | Swaynotificationcenter   

##Install

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
sudo rm -r /home/askodon/nixos-conf
git clone https://github.com/Askodon/nixos-conf.git /home/askodon/nixos-conf
upgrade
```
