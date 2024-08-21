# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/";
      saved-view = "/org/";
      show-warning = false;
      window-height = 555;
      window-is-maximized = false;
      window-width = 1083;
    };

    "io/bassi/Amberol" = {
      background-play = false;
      window-height = 723;
      window-width = 1131;
    };

    "org/cinnamon" = {
      alttab-switcher-delay = 100;
      alttab-switcher-show-all-workspaces = true;
      alttab-switcher-style = "coverflow";
      alttab-switcher-warp-mouse-pointer = true;
      desklet-snap-interval = 25;
      desktop-effects = true;
      desktop-effects-close = "fly";
      desktop-effects-map = "fly";
      desktop-effects-minimize = "fly";
      enabled-applets = [
        "panel1:center:1:grouped-window-list@cinnamon.org:2"
        "panel1:right:0:systray@cinnamon.org:3"
        "panel1:right:7:notifications@cinnamon.org:5"
        "panel1:right:5:removable-drives@cinnamon.org:7"
        "panel1:right:2:keyboard@cinnamon.org:8"
        "panel1:right:9:favorites@cinnamon.org:9"
        "panel1:right:6:network@cinnamon.org:10"
        "panel1:right:10:sound@cinnamon.org:11"
        "panel1:right:8:power@cinnamon.org:12"
        "panel1:right:3:calendar@cinnamon.org:13"
        "panel1:left:0:Cinnamenu@json:21"
        "panel1:right:11:SW++@mohammad-sn:25"
        "panel1:right:4:weather@mockturtl:34"
      ];
      enabled-desklets = [ ];
      enabled-extensions = [ "transparent-panels@germanfr" ];
      favorite-apps = [ ];
      next-applet-id = 37;
      panel-edit-mode = false;
      panel-zone-icon-sizes = "[{\"panelId\": 1, \"left\": 32, \"center\": 32, \"right\": 32}]";
      panel-zone-symbolic-icon-sizes = "[{\"panelId\": 1, \"left\": 26, \"center\": 26, \"right\": 21}]";
      panels-autohide = [ "1:intel" ];
      panels-height = [ "1:32" ];
      panels-hide-delay = [ "1:0" ];
      window-effect-speed = 2;
      workspace-expo-view-as-grid = false;
    };

    "org/cinnamon/cinnamon-session" = {
      quit-time-delay = 60;
    };

    "org/cinnamon/desktop/a11y/applications" = {
      screen-keyboard-enabled = false;
      screen-reader-enabled = false;
    };

    "org/cinnamon/desktop/a11y/keyboard" = {
      bouncekeys-delay = 300;
      mousekeys-accel-time = 300;
      mousekeys-init-delay = 300;
      mousekeys-max-speed = 10;
      slowkeys-delay = 300;
    };

    "org/cinnamon/desktop/a11y/mouse" = {
      dwell-click-enabled = false;
      dwell-threshold = 10;
      dwell-time = 1.2;
      secondary-click-enabled = false;
      secondary-click-time = 1.2;
    };

    "org/cinnamon/desktop/applications/calculator" = {
      exec = "gnome-calculator";
    };

    "org/cinnamon/desktop/applications/terminal" = {
      exec = "gnome-terminal";
      exec-arg = "--";
    };

    "org/cinnamon/desktop/background" = {
      picture-uri = "file:///home/askodon/wallpaper/space-2560x1440-d6km59f5eoo3bm9q.jpg";
    };

    "org/cinnamon/desktop/background/slideshow" = {
      delay = 15;
      image-source = "directory:///home/askodon/wallpaper";
      random-order = true;
      slideshow-enabled = false;
      slideshow-paused = false;
    };

    "org/cinnamon/desktop/interface" = {
      cursor-blink = true;
      cursor-blink-time = 1200;
      cursor-size = 24;
      cursor-theme = "Bibata-Modern-Classic";
      font-name = "Roboto 10";
      gtk-theme = "Qogir-Dark";
      icon-theme = "WhiteSur-dark";
      keyboard-layout-prefer-variant-names = false;
      keyboard-layout-show-flags = false;
      keyboard-layout-use-upper = true;
      text-scaling-factor = 1.0;
      toolkit-accessibility = false;
    };

    "org/cinnamon/desktop/keybindings" = {
      custom-list = [
        "custom2"
        "custom1"
        "custom0"
      ];
      show-desklets = [ ];
    };

    "org/cinnamon/desktop/keybindings/custom-keybindings/custom0" = {
      binding = [
        "<Super>period"
        "<Super>slash"
      ];
      command = "/home/askodon/nixos-conf/rofi/launchers/qogirColor/launcher.sh";
      name = "rofi";
    };

    "org/cinnamon/desktop/keybindings/custom-keybindings/custom1" = {
      binding = [
        "<Super>e"
        "<Super>Cyrillic_u"
      ];
      command = "nautilus";
      name = "nautilus";
    };

    "org/cinnamon/desktop/keybindings/custom-keybindings/custom2" = {
      binding = [
        "<Super>s"
        "<Super>Cyrillic_yeru"
        "Print"
      ];
      command = "gnome-screenshot -c";
      name = "gnome-screenshot";
    };

    "org/cinnamon/desktop/keybindings/media-keys" = {
      area-screenshot = [ "<Super>KP_Next" ];
      area-screenshot-clip = [ "<Shift><Super>Cyrillic_yeru" ];
      home = [ "XF86Explorer" ];
      screenshot = [ ];
    };

    "org/cinnamon/desktop/keybindings/wm" = {
      push-tile-left = [ ];
      push-tile-right = [ ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-down = [ "<Super>w" ];
      switch-to-workspace-left = [ "<Super>Left" ];
      switch-to-workspace-right = [ "<Super>Right" ];
      switch-to-workspace-up = [
        "<Super>Tab"
        "<Alt>F1"
      ];
    };

    "org/cinnamon/desktop/media-handling" = {
      autorun-never = false;
    };

    "org/cinnamon/desktop/peripherals/keyboard" = {
      delay = mkUint32 500;
      numlock-state = false;
      repeat = true;
      repeat-interval = mkUint32 30;
    };

    "org/cinnamon/desktop/peripherals/mouse" = {
      double-click = 400;
      drag-threshold = 8;
      speed = 0.0;
    };

    "org/cinnamon/desktop/peripherals/touchpad" = {
      speed = 0.0;
    };

    "org/cinnamon/desktop/screensaver" = {
      layout-group = 1;
    };

    "org/cinnamon/desktop/session" = {
      idle-delay = mkUint32 1800;
    };

    "org/cinnamon/desktop/sound" = {
      event-sounds = false;
    };

    "org/cinnamon/desktop/wm/preferences" = {
      min-window-opacity = 30;
      num-workspaces = 2;
      titlebar-font = "Roboto Medium 10";
      workspace-names = [ ];
    };

    "org/cinnamon/gestures" = {
      swipe-down-2 = "PUSH_TILE_DOWN::end";
      swipe-down-3 = "TOGGLE_OVERVIEW::end";
      swipe-down-4 = "VOLUME_DOWN::end";
      swipe-left-2 = "PUSH_TILE_LEFT::end";
      swipe-left-3 = "WORKSPACE_NEXT::end";
      swipe-left-4 = "WINDOW_WORKSPACE_PREVIOUS::end";
      swipe-right-2 = "PUSH_TILE_RIGHT::end";
      swipe-right-3 = "WORKSPACE_PREVIOUS::end";
      swipe-right-4 = "WINDOW_WORKSPACE_NEXT::end";
      swipe-up-2 = "PUSH_TILE_UP::end";
      swipe-up-3 = "TOGGLE_EXPO::end";
      swipe-up-4 = "VOLUME_UP::end";
      tap-3 = "MEDIA_PLAY_PAUSE::end";
    };

    "org/cinnamon/launcher" = {
      check-frequency = 300;
      memory-limit = 2048;
    };

    "org/cinnamon/muffin" = {
      attach-modal-dialogs = true;
      draggable-border-width = 10;
      placement-mode = "center";
      unredirect-fullscreen-windows = true;
      workspace-cycle = true;
    };

    "org/cinnamon/settings-daemon/peripherals/keyboard" = {
      numlock-state = "off";
    };

    "org/cinnamon/theme" = {
      name = "Qogir-Dark";
    };

    "org/gnome/Console" = {
      last-window-maximised = false;
      last-window-size = mkTuple [
        1201
        782
      ];
    };

    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/control-center" = {
      last-panel = "network";
      window-state = mkTuple [
        980
        640
        false
      ];
    };

    "org/gnome/desktop/a11y" = {
      always-show-text-caret = false;
    };

    "org/gnome/desktop/a11y/applications" = {
      screen-keyboard-enabled = false;
      screen-reader-enabled = false;
    };

    "org/gnome/desktop/a11y/keyboard" = {
      bouncekeys-beep-reject = false;
      slowkeys-beep-reject = false;
      stickykeys-modifier-beep = false;
      togglekeys-enable = false;
    };

    "org/gnome/desktop/a11y/mouse" = {
      dwell-click-enabled = false;
      dwell-threshold = 10;
      dwell-time = 1.2;
      secondary-click-enabled = false;
      secondary-click-time = 1.2;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [
        "Utilities"
        "YaST"
        "Pardus"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [
        "gnome-abrt.desktop"
        "gnome-system-log.desktop"
        "nm-connection-editor.desktop"
        "org.gnome.baobab.desktop"
        "org.gnome.Connections.desktop"
        "org.gnome.DejaDup.desktop"
        "org.gnome.Dictionary.desktop"
        "org.gnome.DiskUtility.desktop"
        "org.gnome.Evince.desktop"
        "org.gnome.FileRoller.desktop"
        "org.gnome.fonts.desktop"
        "org.gnome.Loupe.desktop"
        "org.gnome.seahorse.Application.desktop"
        "org.gnome.tweaks.desktop"
        "org.gnome.Usage.desktop"
        "vinagre.desktop"
      ];
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
      picture-uri = "file:///run/current-system/sw/share/backgrounds/Ashim%20DSilva.jpg";
    };

    "org/gnome/desktop/input-sources" = {
      current = mkUint32 0;
      show-all-sources = false;
      xkb-options = [ ];
    };

    "org/gnome/desktop/interface" = {
      can-change-accels = false;
      clock-show-date = false;
      clock-show-seconds = false;
      color-scheme = "prefer-dark";
      cursor-blink = true;
      cursor-blink-time = 1200;
      cursor-blink-timeout = 10;
      cursor-size = 24;
      cursor-theme = "Bibata-Modern-Classic";
      enable-animations = true;
      font-name = "Roboto 10";
      gtk-color-palette = "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90";
      gtk-color-scheme = "";
      gtk-enable-primary-paste = true;
      gtk-im-module = "";
      gtk-im-preedit-style = "callback";
      gtk-im-status-style = "callback";
      gtk-key-theme = "Default";
      gtk-theme = "Qogir-Dark";
      gtk-timeout-initial = 200;
      gtk-timeout-repeat = 20;
      icon-theme = "WhiteSur-dark";
      menubar-accel = "F10";
      menubar-detachable = false;
      menus-have-tearoff = false;
      monospace-font-name = "JetBrainsMono Nerd Font 10";
      scaling-factor = mkUint32 0;
      text-scaling-factor = 1.0;
      toolbar-detachable = false;
      toolbar-icons-size = "large";
      toolbar-style = "both-horiz";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-console" ];
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "default";
      double-click = 400;
      drag-threshold = 8;
      left-handed = false;
      middle-click-emulation = false;
      natural-scroll = false;
      speed = 0.0;
    };

    "org/gnome/desktop/privacy" = {
      disable-camera = false;
      disable-microphone = false;
      disable-sound-output = false;
      old-files-age = mkUint32 30;
      recent-files-max-age = 7;
      remember-recent-files = true;
      remove-old-temp-files = false;
      remove-old-trash-files = false;
    };

    "org/gnome/desktop/screensaver" = {
      embedded-keyboard-command = "onboard --xid";
      embedded-keyboard-enabled = false;
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [
        "org.gnome.Contacts.desktop"
        "org.gnome.Documents.desktop"
        "org.gnome.Nautilus.desktop"
      ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = false;
      input-feedback-sounds = false;
      theme-name = "LinuxMint";
    };

    "org/gnome/desktop/wm/keybindings" = {
      switch-input-source-backward = [ "<Super>space" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      action-double-click-titlebar = "toggle-maximize";
      action-middle-click-titlebar = "lower";
      action-right-click-titlebar = "menu";
      audible-bell = false;
      auto-raise = false;
      auto-raise-delay = 500;
      button-layout = ":minimize,maximize,close";
      disable-workarounds = false;
      focus-mode = "click";
      focus-new-windows = "smart";
      mouse-button-modifier = "<Alt>";
      num-workspaces = 2;
      raise-on-click = true;
      resize-with-right-button = true;
      theme = "Mint-Y";
      titlebar-font = "Roboto Medium 10";
      titlebar-uses-system-font = false;
      visual-bell = false;
      visual-bell-type = "fullscreen-flash";
      workspace-names = [ ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/dialogs/extract" = {
      height = 800;
      recreate-folders = true;
      skip-newer = false;
      width = 1000;
    };

    "org/gnome/file-roller/file-selector" = {
      show-hidden = false;
      sidebar-size = 300;
      window-size = mkTuple [
        (-1)
        (-1)
      ];
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 655;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 582;
      window-width = 1205;
    };

    "org/gnome/gnome-screenshot" = {
      delay = 5;
      include-pointer = false;
      last-save-directory = "file:///home/askodon/%D0%98%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F";
    };

    "org/gnome/libgnomekbd/desktop" = {
      group-per-window = false;
      load-extra-items = false;
    };

    "org/gnome/libgnomekbd/keyboard" = {
      options = [
        "grptgrp:win_space_toggle"
        "grptgrp:win_space_toggle"
        "grptgrp:win_space_toggle"
        "grptgrp:win_space_toggle"
        "grptgrp:win_space_toggle"
      ];
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "7z";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      show-create-link = true;
      show-delete-permanently = true;
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [
        1116
        818
      ];
      maximized = false;
    };

    "org/gnome/nm-applet" = {
      disable-connected-notifications = true;
    };

    "org/gnome/nm-applet/eap/64dea75c-56ed-3643-b62c-3d019f59dfed" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/portal/filechooser/code" = {
      last-folder-path = "/home/askodon/.config/home-manager";
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
      ];
      home = [ "<Super>backslash" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Primary><Alt>t";
      command = "kitty";
      name = "kitty";
    };

    "org/gnome/shell" = {
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/world-clocks" = {
      locations = [ ];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1723695172;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1723617735;
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      background-color = "rgb(23,31,43)";
      bold-is-bright = true;
      cell-width-scale = 1.0;
      custom-command = "zellij options --disable-mouse-mode";
      font = "Fira Code 12";
      foreground-color = "rgb(234,194,139)";
      palette = [
        "rgb(0,0,0)"
        "rgb(192,28,40)"
        "rgb(232,130,152)"
        "rgb(162,115,76)"
        "rgb(0,114,255)"
        "rgb(163,71,186)"
        "rgb(42,161,179)"
        "rgb(208,207,204)"
        "rgb(94,92,100)"
        "rgb(246,97,81)"
        "rgb(51,209,122)"
        "rgb(233,173,12)"
        "rgb(42,123,222)"
        "rgb(192,97,203)"
        "rgb(174,143,235)"
        "rgb(255,255,255)"
      ];
      use-custom-command = true;
      use-system-font = false;
      use-theme-colors = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [
        937
        354
      ];
    };

    "org/gtk/settings/color-chooser" = {
      custom-colors = [
        (mkTuple [
          0.0
          0.0
          0.0
          0.0
        ])
        (mkTuple [
          0.909804
          0.509804
          0.596078
          1.0
        ])
        (mkTuple [
          0.646667
          0.646667
          0.646667
          1.0
        ])
        (mkTuple [
          1.0
          0.0
          4.2705e-2
          1.0
        ])
        (mkTuple [
          3.333e-3
          3.333e-3
          3.333e-3
          1.0
        ])
        (mkTuple [
          0.230769
          0.0
          1.0
          1.0
        ])
        (mkTuple [
          0.265641
          8.6333e-2
          0.863333
          1.0
        ])
        (mkTuple [
          0.265641
          8.6333e-2
          0.863333
          1.0
        ])
      ];
      selected-color = mkTuple [
        true
        0.0
        0.0
        0.0
        0.0
      ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 188;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [
        449
        150
      ];
      window-size = mkTuple [
        1022
        749
      ];
    };

    "org/nemo/desktop" = {
      computer-icon-visible = false;
      font = "Roboto 10";
      home-icon-visible = false;
      network-icon-visible = false;
      show-orphaned-desktop-icons = false;
      trash-icon-visible = false;
      volumes-visible = false;
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
      ];
    };

    "org/nemo/plugins" = {
      disabled-actions = [ "warpinator-send.nemo_action" ];
      disabled-extensions = [ ];
    };

    "org/nemo/preferences" = {
      show-computer-icon-toolbar = false;
      show-hidden-files = true;
      show-home-icon-toolbar = false;
      show-new-folder-icon-toolbar = true;
      show-open-in-terminal-toolbar = true;
      show-reload-icon-toolbar = true;
      show-show-thumbnails-toolbar = true;
    };

    "org/nemo/search" = {
      search-reverse-sort = false;
      search-sort-column = "name";
    };

    "org/nemo/window-state" = {
      geometry = "953x848+252+113";
      maximized = false;
      sidebar-bookmark-breakpoint = 7;
      sidebar-width = 293;
      start-with-sidebar = true;
    };

    "org/onboard" = {
      schema-version = "2.3";
      show-status-icon = false;
      show-tooltips = false;
      system-theme-associations = {
        HighContrast = "HighContrast";
        HighContrastInverse = "HighContrastInverse";
        LowContrast = "LowContrast";
        ContrastHighInverse = "HighContrastInverse";
        Default = "";
      };
      use-system-defaults = false;
      xembed-onboard = false;
    };

    "org/onboard/theme-settings" = {
      color-scheme = "/nix/store/bf6y6181igyjdxrb32mx21crw982hpaw-onboard-1.4.1/share/onboard/themes/Charcoal.colors";
      key-fill-gradient = 8.0;
      key-gradient-direction = -3.0;
      key-size = 94.0;
      key-stroke-gradient = 8.0;
      key-stroke-width = 0.0;
      key-style = "gradient";
      roundrect-radius = 20.0;
    };

    "org/x/apps/portal" = {
      color-scheme = "prefer-dark";
    };

    "org/x/pix/browser" = {
      fullscreen-sidebar = "hidden";
      fullscreen-thumbnails-visible = false;
      maximized = false;
      sidebar-sections = [
        "GthFileProperties:expanded"
        "GthFileComment:expanded"
        "GthFileDetails:expanded"
        "GthImageHistogram:expanded"
      ];
      sidebar-visible = true;
      sort-inverse = false;
      sort-type = "file::mtime";
      startup-current-file = "file:///home/askodon/%D0%97%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8/undefined%20-%20Imgur.png";
      startup-location = "file:///home/askodon/%D0%97%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8";
      statusbar-visible = true;
      viewer-sidebar = "hidden";
    };

    "org/x/pix/data-migration" = {
      catalogs-2-10 = true;
    };

    "org/x/pix/general" = {
      active-extensions = [
        "23hq"
        "bookmarks"
        "burn_disc"
        "catalogs"
        "change_date"
        "comments"
        "contact_sheet"
        "convert_format"
        "desktop_background"
        "edit_metadata"
        "exiv2_tools"
        "file_manager"
        "find_duplicates"
        "flicker"
        "gstreamer_tools"
        "gstreamer_utils"
        "image_print"
        "image_rotation"
        "importer"
        "jpeg_utils"
        "list_tools"
        "oauth"
        "photo_importer"
        "raw_files"
        "red_eye_removal"
        "rename_series"
        "resize_images"
        "search"
        "selections"
        "slideshow"
        "terminal"
        "webalbums"
      ];
    };

    "org/x/player" = {
      active-plugins = [
        "screensaver"
        "opensubtitles"
        "media_player_keys"
        "apple-trailers"
        "dbusservice"
        "recent"
        "movie-properties"
        "skipto"
        "vimeo"
        "chapters"
        "screenshot"
        "autoload-subtitles"
      ];
      debug = false;
      subtitle-encoding = "UTF-8";
    };

    "org/x/warpinator/preferences" = {
      ask-for-send-permission = true;
      autostart = false;
      connect-id = "NIXOS-B7276114D36F497E85FA";
      no-overwrite = true;
    };

  };
}
