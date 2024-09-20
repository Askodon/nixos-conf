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
## Tools

|                             | NixOS(Wayland)                                                                                                      |
| --------------------------- | :------------------------------------------------------------------------------------------------------------------ |
| **Window Manager**          | Hyprland                                                                                                            |
| **Terminal Emulator**       | Zellij + foot                                                                                                       |
| **Bar**                     | Waybar                                                                                                              |
| **Application Launcher**    | rofi-wayland + fuzzel                                                                                               |
| **Notification Daemon**     | swaynotificationcenter                                                                                              |
| **Display Manager**         | GDM                                                                                                                 |
| **Color Scheme**            | qogir                                                                                                               |
| **network management tool** | NetworkManager                                                                                                      |
| **System resource monitor** | Btop                                                                                                                |
| **File Manager**            | Yazi + nemo                                                                                                         |
| **Shell**                   | zsh                                                                                                                 |
| **Media Player**            | mpv                                                                                                                 |
| **Text Editor**             | vscode                                                                                                              |
| **Fonts**                   | Nerd fonts + Roboto                                                                                                 |
| **Image Viewer**            | eom                                                                                                                 |
| **Screenshot Software**     | hyprshot                                                                                                            |
| **Screen Recording**        | OBS                                                                                                                 |   

## Install

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

## Todo

- [ ] **eww** - write widgets, ...
- [ ] **refactor** - remove dead code, use "let in" in code, ...

## References
- Dots
 -[ryan4yin](https://github.com/ryan4yin/nix-config)
 -[sukhmancs](https://github.com/sukhmancs/nixos-configs/blob/main/README.md)
- Style
 -[qogir-theme](https://github.com/vinceliuice/Qogir-theme)
 -[waybar](https://github.com/TheFrankyDoll/win10-style-waybar)

