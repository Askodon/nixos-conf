# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/com/github/stunkymonkey/nautilus-open-any-terminal/terminal";
      saved-view = "/com/github/stunkymonkey/nautilus-open-any-terminal/terminal";
      window-height = 500;
      window-is-maximized = false;
      window-width = 1023;
    };

    "com/mattjakeman/ExtensionManager" = {
      height = 819;
      is-maximized = false;
      last-used-version = "0.5.1";
      width = 1067;
    };

    "org/gnome/Extensions" = {
      window-maximized = true;
    };

    "org/gnome/control-center" = {
      last-panel = "system";
      window-state = mkTuple [ 980 640 false ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      picture-uri = "file:////home/askodon/wallpaper/space-2560x1440-d6km59f5eoo3bm9q.jpg";
      picture-uri-dark = "file:////home/askodon/wallpaper/space-2560x1440-d6km59f5eoo3bm9q.jpg";
    };

    "org/gnome/desktop/input-sources" = {
      mru-sources = [ (mkTuple [ "xkb" "ru" ]) (mkTuple [ "xkb" "us" ]) ];
      sources = [ (mkTuple [ "xkb" "ru" ]) (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "grp:win_space_toggle" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-theme = "Bibata-Original-Classic";
      enable-animations = true;
      enable-hot-corners = false;
      font-name = "Roboto 11";
      gtk-theme = "Qogir-Dark";
      icon-theme = "WhiteSur";
      monospace-font-name = "FiraCode Nerd Font 10";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-extensions" ];
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions" = {
      application-id = "org.gnome.Extensions.desktop";
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = -1;
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/wm/keybindings" = {
      maximize = [];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-left = [ "<Super>Left" ];
      switch-to-workspace-right = [ "<Super>Right" ];
      unmaximize = [];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = true;
      edge-tiling = false;
      overlay-key = "Super_L";
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [];
      toggle-tiled-right = [];
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
      maximized = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Control><Alt>t";
      command = "/home/askodon/nixos-conf/applications/wezterm.sh";
      name = "wezterm";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>e";
      command = "nautilus";
      name = "nautilus";
    };

    "org/gnome/shell" = {
      disabled-extensions = [];
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "blur-my-shell@aunetx" "clipboard-indicator@tudmotu.com" "dash-to-panel@jderose9.github.com" "lilypad@shendrew.github.io" "tiling-assistant@leleat-on-github" "caffeine@patapon.info" "CoverflowAltTab@palatis.blogspot.com" "arcmenu@arcmenu.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "wallhub@sakithb.github.io" "vertical-workspaces@G-dH.github.com" "quick-settings-avatar@d-go" "quick-settings-tweaks@qwreey" "quick-settings-audio-panel@rayzeq.github.io" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" ];
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/extensions/arcmenu" = {
      arcmenu-hotkey = [ "<Super>w" ];
      button-padding = 0;
      custom-menu-button-icon = "detach-symbolic";
      custom-menu-button-icon-size = 36.0;
      default-menu-view-tognee = "Categories_List";
      disable-tooltips = true;
      enable-horizontal-flip = true;
      extra-categories = [ (mkTuple [ 0 true ]) (mkTuple [ 1 true ]) (mkTuple [ 2 true ]) (mkTuple [ 3 true ]) (mkTuple [ 4 true ]) ];
      menu-background-color = "rgba(48,48,49,0.98)";
      menu-border-color = "rgb(60,60,60)";
      menu-button-active-fg-color = mkTuple [ true "rgb(58,83,116)" ];
      menu-button-appearance = "Icon";
      menu-button-border-radius = mkTuple [ true 5 ];
      menu-button-border-width = mkTuple [ false 3 ];
      menu-button-fg-color = mkTuple [ true "rgb(242,242,242)" ];
      menu-button-hover-bg-color = mkTuple [ true "rgb(58,83,116)" ];
      menu-button-hover-fg-color = mkTuple [ false "rgb(58,83,116)" ];
      menu-button-icon = "Custom_Icon";
      menu-button-position-offset = 0;
      menu-foreground-color = "rgb(223,223,223)";
      menu-item-active-bg-color = "rgb(25,98,163)";
      menu-item-active-fg-color = "rgb(255,255,255)";
      menu-item-category-icon-size = "Small";
      menu-item-grid-icon-size = "Large";
      menu-item-hover-bg-color = "rgb(21,83,158)";
      menu-item-hover-fg-color = "rgb(255,255,255)";
      menu-item-icon-size = "Small";
      menu-layout = "Tognee";
      menu-separator-color = "rgba(255,255,255,0.1)";
      misc-item-icon-size = "Default";
      prefs-visible-page = 0;
      runner-hotkey = [ "<Super>period" ];
      runner-hotkey-open-primary-monitor = false;
      search-entry-border-radius = mkTuple [ true 25 ];
      vert-separator = true;
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/coverflow-alt-tab" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = true;
      brightness = 0.6;
      pipeline = "pipeline_default_rounded";
      sigma = 30;
      static-blur = true;
      style-dash-to-dock = 0;
    };

    "org/gnome/shell/extensions/blur-my-shell/lockscreen" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/overview" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness = 0.6;
      pipeline = "pipeline_default";
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/screenshot" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/window-list" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 1;
    };

    "org/gnome/shell/extensions/coverflowalttab" = {
      switcher-background-color = mkTuple [ 0.3215686274509804 0.5803921568627451 0.8862745098039215 ];
    };

    "org/gnome/shell/extensions/dash-to-panel" = {
      animate-appicon-hover = true;
      appicon-margin = 0;
      appicon-padding = 4;
      available-monitors = [ 0 ];
      dot-color-dominant = true;
      dot-color-override = false;
      dot-color-unfocused-different = false;
      dot-position = "BOTTOM";
      focus-highlight-dominant = true;
      hotkeys-overlay-combo = "TEMPORARILY";
      intellihide = true;
      intellihide-hide-from-windows = true;
      leftbox-padding = -1;
      leftbox-size = 0;
      panel-anchors = ''
        {"0":"MIDDLE"}
      '';
      panel-element-positions = ''
        {"0":[{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}
      '';
      panel-lengths = ''
        {"0":100}
      '';
      panel-sizes = ''
        {"0":39}
      '';
      primary-monitor = 0;
      show-apps-icon-file = "";
      status-icon-padding = -1;
      trans-gradient-bottom-opacity = 0.0;
      trans-gradient-top-color = "#3a5374";
      trans-gradient-top-opacity = 0.1;
      trans-use-custom-bg = false;
      trans-use-custom-gradient = true;
      trans-use-custom-opacity = true;
      tray-padding = 2;
      tray-size = 16;
      window-preview-title-position = "TOP";
    };

    "org/gnome/shell/extensions/libpanel" = {
      layout = [ [ "gnome@main" "quick-settings-audio-panel@rayzeq.github.io/main" ] ];
    };

    "org/gnome/shell/extensions/lilypad" = {
      lilypad-order = [ "StatusNotifierItem" "clipboardIndicator" "tiling_assistant" "appindicator-legacy:Nextcloud:0" "appindicator-legacy:null:0" "tiling-assistant" "appindicator-legacy:Nextcloud:12813" ];
      reorder = true;
      rightbox-order = [ "lilypad" "keyboard" ];
      show-icons = false;
    };

    "org/gnome/shell/extensions/quick-settings-tweaks" = {
      input-always-show = false;
      input-show-selected = true;
      list-buttons = "[{\"name\":\"SystemItem\",\"title\":null,\"visible\":true},{\"name\":\"OutputStreamSlider\",\"title\":null,\"visible\":false},{\"name\":\"InputStreamSlider\",\"title\":null,\"visible\":false},{\"name\":\"St_BoxLayout\",\"title\":null,\"visible\":true},{\"name\":\"BrightnessItem\",\"title\":null,\"visible\":false},{\"name\":\"NMWiredToggle\",\"title\":\"Ethernet\",\"visible\":true},{\"name\":\"NMWirelessToggle\",\"title\":null,\"visible\":false},{\"name\":\"NMModemToggle\",\"title\":null,\"visible\":false},{\"name\":\"NMBluetoothToggle\",\"title\":null,\"visible\":false},{\"name\":\"NMVpnToggle\",\"title\":null,\"visible\":false},{\"name\":\"BluetoothToggle\",\"title\":\"Bluetooth\",\"visible\":false},{\"name\":\"PowerProfilesToggle\",\"title\":\"\1056\1077\1078\1080\1084 \1087\1080\1090\1072\1085\1080\1103\",\"visible\":true},{\"name\":\"NightLightToggle\",\"title\":\"\1053\1086\1095\1085\1086\1081 \1089\1074\1077\1090\",\"visible\":false},{\"name\":\"DarkModeToggle\",\"title\":\"\1058\1077\1084\1085\1099\1081 \1089\1090\1080\1083\1100\",\"visible\":true},{\"name\":\"KeyboardBrightnessToggle\",\"title\":\"\1050\1083\1072\1074\1080\1072\1090\1091\1088\1072\",\"visible\":false},{\"name\":\"RfkillToggle\",\"title\":\"\1040\1074\1080\1072\1088\1077\1078\1080\1084\",\"visible\":false},{\"name\":\"RotationToggle\",\"title\":\"\1040\1074\1090\1086\1087\1086\1074\1086\1088\1086\1090\",\"visible\":false},{\"name\":\"CaffeineToggle\",\"title\":\"\1050\1086\1092\1077\1080\1085\",\"visible\":true},{\"name\":\"DndQuickToggle\",\"title\":\"\1053\1077 \1073\1077\1089\1087\1086\1082\1086\1080\1090\1100\",\"visible\":true},{\"name\":\"BackgroundAppsToggle\",\"title\":\"\1053\1077\1090 \1092\1086\1085\1086\1074\1099\1093 \1087\1088\1080\1083\1086\1078\1077\1085\1080\1081\",\"visible\":false},{\"name\":\"MediaSection\",\"title\":null,\"visible\":false},{\"name\":\"Notifications\",\"title\":null,\"visible\":false}]";
      output-show-selected = true;
      user-removed-buttons = [];
      volume-mixer-check-description = true;
      volume-mixer-enabled = true;
    };

    "org/gnome/shell/extensions/tiling-assistant" = {
      activate-layout0 = [];
      activate-layout1 = [];
      activate-layout2 = [];
      activate-layout3 = [];
      active-window-hint = 1;
      active-window-hint-color = "rgb(53,132,228)";
      auto-tile = [];
      center-window = [];
      debugging-free-rects = [];
      debugging-show-tiled-rects = [];
      default-move-mode = 0;
      dynamic-keybinding-behavior = 0;
      import-layout-examples = false;
      last-version-installed = 48;
      restore-window = [ "<Super>Down" ];
      search-popup-layout = [];
      tile-bottom-half = [ "<Super>KP_2" ];
      tile-bottom-half-ignore-ta = [];
      tile-bottomleft-quarter = [ "<Super>KP_1" ];
      tile-bottomright-quarter = [ "<Super>KP_3" ];
      tile-bottomright-quarter-ignore-ta = [];
      tile-edit-mode = [];
      tile-left-half = [ "<Super>Left" "<Super>KP_4" ];
      tile-left-half-ignore-ta = [];
      tile-maximize = [ "<Super>Up" "<Super>KP_5" ];
      tile-maximize-horizontally = [];
      tile-maximize-vertically = [];
      tile-right-half = [ "<Super>Right" "<Super>KP_6" ];
      tile-right-half-ignore-ta = [];
      tile-top-half = [ "<Super>KP_8" ];
      tile-top-half-ignore-ta = [];
      tile-topleft-quarter = [ "<Super>KP_7" ];
      tile-topleft-quarter-ignore-ta = [];
      tile-topright-quarter = [ "<Super>KP_9" ];
      tile-topright-quarter-ignore-ta = [];
      toggle-always-on-top = [];
      toggle-tiling-popup = [];
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Qogir-Dark";
    };

    "org/gnome/shell/extensions/vertical-workspaces" = {
      ws-thumbnails-position = 1;
    };

    "org/gnome/shell/extensions/wallhub" = {
      slideshow-interval = mkUint32 10;
      slideshow-interval-unit = "Minutes";
      wallpaper-paths = [ "/home/askodon/wallpaper" ];
      wallpaper-paths-selected = 1;
    };

    "org/gnome/shell/keybindings" = {
      screenshot = [ "<Super>Cyrillic_ze" ];
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1725866692;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1725605107;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.94902 0.94902 0.94902 1.0 ]) (mkTuple [ 0.94902 0.94902 0.94902 0.15 ]) (mkTuple [ 0.227451 0.32549 0.454902 1.0 ]) ];
      selected-color = mkTuple [ true 0.227451 0.32549 0.454902 1.0 ];
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 919 603 ];
    };

    "org/x/pix/general" = {
      active-extensions = [ "23hq" "bookmarks" "burn_disc" "catalogs" "change_date" "comments" "contact_sheet" "convert_format" "desktop_background" "edit_metadata" "exiv2_tools" "file_manager" "find_duplicates" "flicker" "gstreamer_tools" "gstreamer_utils" "image_print" "image_rotation" "importer" "jpeg_utils" "list_tools" "oauth" "photo_importer" "raw_files" "red_eye_removal" "rename_series" "resize_images" "search" "selections" "slideshow" "terminal" "webalbums" ];
    };

  };
}
