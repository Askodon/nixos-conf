# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/";
      saved-view = "/";
      window-height = 500;
      window-is-maximized = true;
      window-width = 540;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-size = 24;
      cursor-theme = "Bibata-Original-Classic";
      enable-animations = true;
      enable-hot-corners = false;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "RobotoMono Nerd Font Regular 11";
      font-rgba-order = "rgb";
      gtk-theme = "Qogir-Dark";
      icon-theme = "WhiteSur-dark";
      monospace-font-name = "FiraCode Nerd Font 10";
      text-scaling-factor = 1.0;
      toolbar-icons-size = "large";
      toolbar-style = "both-horiz";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      input-feedback-sounds = false;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      font = "FiraCode Nerd Font 12";
      use-system-font = false;
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 168;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [
        0
        0
      ];
      window-size = mkTuple [
        721
        927
      ];
    };

    "org/nemo/list-view" = {
      default-column-order = [
        "name"
        "size"
        "type"
        "date_modified"
        "where"
        "owner"
        "date_modified_with_time"
        "group"
        "date_created"
        "date_accessed"
        "detailed_type"
        "permissions"
        "octal_permissions"
        "date_created_with_time"
        "mime_type"
      ];
      default-visible-columns = [
        "name"
        "size"
        "type"
        "date_modified"
        "where"
      ];
    };

    "org/nemo/preferences" = {
      inherit-show-thumbnails = true;
      show-computer-icon-toolbar = false;
      show-hidden-files = true;
      show-home-icon-toolbar = true;
      show-location-entry = true;
      show-new-folder-icon-toolbar = true;
      show-open-in-terminal-toolbar = true;
      show-show-thumbnails-toolbar = false;
    };

    "org/nemo/preferences/menu-config" = {
      selection-menu-copy-to = true;
      selection-menu-duplicate = true;
      selection-menu-move-to = true;
    };

    "org/nemo/window-state" = {
      maximized = true;
      side-pane-view = "tree";
      sidebar-bookmark-breakpoint = 0;
      sidebar-width = 259;
      start-with-sidebar = true;
    };

  };
}
