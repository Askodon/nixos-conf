# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/com/github/stunkymonkey/nautilus-open-any-terminal/terminal";
      saved-view = "/com/github/stunkymonkey/nautilus-open-any-terminal/terminal";
      window-height = 668;
      window-is-maximized = false;
      window-width = 1037;
    };

    "com/github/stunkymonkey/nautilus-open-any-terminal" = {
      terminal = "kitty";
    };

    "com/mattjakeman/ExtensionManager" = {
      height = 1000;
      is-maximized = false;
      last-used-version = "0.5.1";
      width = 960;
    };

    "io/bassi/Amberol" = {
      window-height = 629;
      window-width = 600;
    };

    "org/gnome/Console" = {
      last-window-maximised = false;
      last-window-size = mkTuple [
        652
        474
      ];
    };

    "org/gnome/Extensions" = {
      window-maximized = false;
    };

    "org/gnome/baobab/ui" = {
      is-maximized = false;
      window-size = mkTuple [
        960
        600
      ];
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [
        1625
        635
        true
      ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" ];
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

    "org/gnome/desktop/applications/terminal" = {
      exec = "wezterm";
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:////home/askodon/wallpaper/mountain-range-5472x3648-18000.jpg";
      picture-uri-dark = "file:////home/askodon/wallpaper/mountain-range-5472x3648-18000.jpg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/input-sources" = {
      show-all-sources = true;
      sources = [
        (mkTuple [
          "xkb"
          "us"
        ])
        (mkTuple [
          "xkb"
          "ru"
        ])
      ];
      xkb-options = [ "grp:win_space_toggle" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-theme = "Bibata-Original-Classic";
      enable-animations = true;
      enable-hot-corners = false;
      font-name = "Roboto 11";
      gtk-theme = "Qogir-Dark";
      icon-theme = "WhiteSur-dark";
      monospace-font-name = "Fira Code 10 @wght=400";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/lockdown" = {
      disable-lock-screen = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [
        "org-gnome-software"
        "ru-linux-gaming-portproton"
        "org-gnome-shell-extensions"
        "vesktop"
        "org-gnome-extensions"
        "draw"
        "firefox"
        "org-gnome-settings"
        "org-gnome-nautilus"
        "com-nextcloud-desktopclient-nextcloud"
        "betterbird"
      ];
    };

    "org/gnome/desktop/notifications/application/betterbird" = {
      application-id = "betterbird.desktop";
    };

    "org/gnome/desktop/notifications/application/com-nextcloud-desktopclient-nextcloud" = {
      application-id = "com.nextcloud.desktopclient.nextcloud.desktop";
    };

    "org/gnome/desktop/notifications/application/draw" = {
      application-id = "draw.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions" = {
      application-id = "org.gnome.Extensions.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-shell-extensions" = {
      application-id = "org.gnome.Shell.Extensions.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-software" = {
      application-id = "org.gnome.Software.desktop";
    };

    "org/gnome/desktop/notifications/application/ru-linux-gaming-portproton" = {
      application-id = "ru.linux_gaming.PortProton.desktop";
    };

    "org/gnome/desktop/notifications/application/vesktop" = {
      application-id = "vesktop.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      idle-activation-enabled = true;
      picture-options = "zoom";
      picture-uri = "file:///home/askodon/.local/share/backgrounds/2024-08-19-09-44-21-jOwankA.jpeg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [
        "org.gnome.Contacts.desktop"
        "org.gnome.Documents.desktop"
        "org.gnome.Nautilus.desktop"
      ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 900;
    };

    "org/gnome/desktop/wm/keybindings" = {
      maximize = [ ];
      move-to-monitor-down = [ "<Super><Shift>Down" ];
      move-to-monitor-left = [ "<Super><Shift>Left" ];
      move-to-monitor-right = [ "<Super><Shift>Right" ];
      move-to-monitor-up = [ "<Super><Shift>Up" ];
      move-to-workspace-down = [ "<Control><Shift><Alt>Down" ];
      move-to-workspace-left = [
        "<Super><Shift>Page_Up"
        "<Super><Shift><Alt>Left"
        "<Control><Shift><Alt>Left"
      ];
      move-to-workspace-right = [
        "<Super><Shift>Page_Down"
        "<Super><Shift><Alt>Right"
        "<Control><Shift><Alt>Right"
      ];
      move-to-workspace-up = [ "<Control><Shift><Alt>Up" ];
      switch-applications = [
        "<Super>Tab"
        "<Alt>Tab"
      ];
      switch-applications-backward = [
        "<Shift><Super>Tab"
        "<Shift><Alt>Tab"
      ];
      switch-group = [
        "<Super>Above_Tab"
        "<Alt>Above_Tab"
      ];
      switch-group-backward = [
        "<Shift><Super>Above_Tab"
        "<Shift><Alt>Above_Tab"
      ];
      switch-panels = [ "<Control><Alt>Tab" ];
      switch-panels-backward = [ "<Shift><Control><Alt>Tab" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-last = [ "<Super>End" ];
      switch-to-workspace-left = [ "<Super>Left" ];
      switch-to-workspace-right = [ "<Super>Right" ];
      unmaximize = [ ];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
      workspace-names = [
        "Workspace 1"
        "Workspace 2"
        "Workspace 3"
        "Workspace 4"
      ];
    };

    "org/gnome/evince/default" = {
      continuous = true;
      dual-page = false;
      dual-page-odd-left = true;
      enable-spellchecking = true;
      fullscreen = false;
      inverted-colors = false;
      show-sidebar = true;
      sidebar-page = "thumbnails";
      sidebar-size = 144;
      sizing-mode = "automatic";
      window-ratio = mkTuple [
        1.27
        0.846904
      ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 665;
      window-width = 1291;
    };

    "org/gnome/gedit/state/file-chooser" = {
      open-recent = false;
    };

    "org/gnome/gedit/state/window" = {
      bottom-panel-size = 140;
      side-panel-active-page = "GeditWindowDocumentsPanel";
      side-panel-size = 200;
      size = mkTuple [
        1502
        810
      ];
      state = 87168;
    };

    "org/gnome/gnome-screenshot" = {
      delay = 10;
      include-pointer = false;
      last-save-directory = "file:///home/askodon/%D0%98%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F";
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = false;
      overlay-key = "Super_L|w";
      workspaces-only-on-primary = false;
    };

    "org/gnome/mutter/keybindings" = {
      cancel-input-capture = [ "<Super><Shift>Escape" ];
      toggle-tiled-left = [ ];
      toggle-tiled-right = [ ];
    };

    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [ "<Super>Escape" ];
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "7z";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [
        1717
        918
      ];
      maximized = false;
    };

    "org/gnome/portal/filechooser/org/gnome/Settings" = {
      last-folder-path = "/home/askodon/wallpaper";
    };

    "org/gnome/portal/filechooser/vesktop" = {
      last-folder-path = "/home/askodon/\1047\1072\1075\1088\1091\1079\1082\1080";
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
      ];
      logout = [ ];
      rotate-video-lock-static = [
        "<Super>o"
        "XF86RotationLockToggle"
      ];
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
      disable-user-extensions = false;
      disabled-extensions = [
        "dash-to-dock@micxgx.gmail.com"
        "apps-menu@gnome-shell-extensions.gcampax.github.com"
        "gTile@vibou"
        "system-monitor@gnome-shell-extensions.gcampax.github.com"
        "windowsNavigator@gnome-shell-extensions.gcampax.github.com"
        "paperwm@paperwm.github.com"
        "color-picker@tuberry"
        "caffeine@patapon.info"
      ];
      enabled-extensions = [
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "dash-to-panel@jderose9.github.com"
        "blur-my-shell@aunetx"
        "appindicatorsupport@rgcjonas.gmail.com"
        "clipboard-indicator@tudmotu.com"
        "arcmenu@arcmenu.com"
        "gnome-clipboard@b00f.github.io"
        "just-perfection-desktop@just-perfection"
        "CoverflowAltTab@palatis.blogspot.com"
        "tiling-assistant@leleat-on-github"
        "weather@eexpss.gmail.com"
        "wallhub@sakithb.github.io"
        "quick-settings-audio-panel@rayzeq.github.io"
        "vertical-workspaces@G-dH.github.com"
      ];
      favorite-apps = [
        "org.gnome.Nautilus.desktop"
        "btop.desktop"
        "io.bassi.Amberol.desktop"
        "vesktop.desktop"
        "vlc.desktop"
        "code.desktop"
        "chromium-browser.desktop"
        "firefox.desktop"
      ];
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/extensions/arcmenu" = {
      apps-show-extra-details = true;
      arc-menu-icon = 71;
      arcmenu-hotkey = [ "<Super>w" ];
      avatar-style = "Square";
      button-item-icon-size = "Default";
      button-padding = 0;
      category-icon-type = "Symbolic";
      custom-menu-button-icon = "detach-symbolic";
      custom-menu-button-icon-size = 36.0;
      dash-to-panel-standalone = false;
      disable-scrollview-fade-effect = false;
      disable-tooltips = true;
      distro-icon = 22;
      enable-horizontal-flip = false;
      force-menu-location = "Off";
      left-panel-width = 175;
      menu-arrow-rise = mkTuple [
        false
        17
      ];
      menu-background-color = "rgb(30,37,41)";
      menu-border-color = "rgb(41,50,55)";
      menu-border-radius = 18;
      menu-button-active-fg-color = mkTuple [
        false
        "rgb(242,242,242)"
      ];
      menu-button-appearance = "Icon";
      menu-button-bg-color = mkTuple [
        false
        "rgb(82,119,195)"
      ];
      menu-button-border-color = mkTuple [
        false
        "transparent"
      ];
      menu-button-border-radius = mkTuple [
        true
        5
      ];
      menu-button-border-width = mkTuple [
        true
        0
      ];
      menu-button-fg-color = mkTuple [
        false
        "rgb(255,255,255)"
      ];
      menu-button-hover-bg-color = mkTuple [
        true
        "rgb(82,148,226)"
      ];
      menu-button-icon = "Custom_Icon";
      menu-button-position-offset = 2;
      menu-foreground-color = "rgb(189,230,251)";
      menu-height = 600;
      menu-item-active-bg-color = "rgba(189,230,251,0.15)";
      menu-item-active-fg-color = "rgb(189,230,251)";
      menu-item-grid-icon-size = "Medium";
      menu-item-hover-bg-color = "rgba(189,230,251,0.08)";
      menu-item-hover-fg-color = "rgb(189,230,251)";
      menu-layout = "Redmond";
      menu-separator-color = "rgba(99,99,98,0.56)";
      menu-width-adjustment = 0;
      misc-item-icon-size = "Default";
      multi-monitor = true;
      override-menu-theme = false;
      position-in-panel = "Left";
      power-display-style = "In_Line";
      power-options = [
        (mkTuple [
          0
          true
        ])
        (mkTuple [
          1
          true
        ])
        (mkTuple [
          2
          true
        ])
        (mkTuple [
          3
          true
        ])
        (mkTuple [
          4
          true
        ])
        (mkTuple [
          5
          true
        ])
        (mkTuple [
          6
          true
        ])
        (mkTuple [
          7
          true
        ])
      ];
      prefs-visible-page = 0;
      recently-installed-apps = [
        "org.gnome.design.SymbolicPreview.desktop"
        "io.missioncenter.MissionCenter.desktop"
        "gparted.desktop"
        "io.github.zen_browser.zen.desktop"
        "kitty.desktop"
      ];
      right-panel-width = 200;
      runner-hotkey = [ "<Super>slash" ];
      search-entry-border-radius = mkTuple [
        true
        25
      ];
      searchbar-default-top-location = "Top";
      shortcut-icon-type = "Full_Color";
      show-bookmarks = true;
      show-category-sub-menus = true;
      show-external-devices = true;
      vert-separator = true;
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/applications" = {
      blur = false;
      blur-on-overview = true;
      brightness = 1.0;
      dynamic-opacity = true;
      enable-all = true;
      opacity = 230;
      sigma = 51;
      whitelist = [ "org.gnome.Nautilus" ];
    };

    "org/gnome/shell/extensions/blur-my-shell/coverflow-alt-tab" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = false;
      brightness = 0.6;
      override-background = true;
      pipeline = "pipeline_84256750775308";
      sigma = 80;
      static-blur = false;
      style-dash-to-dock = 2;
      unblur-in-overview = true;
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-panel" = {
      blur-original-panel = true;
    };

    "org/gnome/shell/extensions/blur-my-shell/lockscreen" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/overview" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness = 0.6;
      force-light-text = false;
      override-background = true;
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
      countdown-timer = 30;
      indicator-position-max = 2;
    };

    "org/gnome/shell/extensions/coverflowalttab" = {
      switcher-background-color = mkTuple [
        0.3215686274509804
        0.5803921568627451
        0.8862745098039215
      ];
    };

    "org/gnome/shell/extensions/dash-to-panel" = {
      animate-appicon-hover = true;
      appicon-margin = 0;
      appicon-padding = 4;
      appicon-style = "NORMAL";
      available-monitors = [ 0 ];
      dot-color-2 = "#5294e2";
      dot-color-3 = "#5294e2";
      dot-color-4 = "#5294e2";
      dot-color-dominant = true;
      dot-color-override = false;
      dot-color-unfocused-different = false;
      dot-position = "BOTTOM";
      dot-size = 3;
      dot-style-focused = "METRO";
      dot-style-unfocused = "METRO";
      focus-highlight-color = "#1a5fb4";
      focus-highlight-dominant = true;
      group-apps = true;
      hotkeys-overlay-combo = "TEMPORARILY";
      intellihide = true;
      intellihide-behaviour = "FOCUSED_WINDOWS";
      intellihide-hide-from-windows = true;
      intellihide-only-secondary = false;
      intellihide-use-pressure = false;
      leftbox-padding = -1;
      panel-anchors = ''
        {"0":"MIDDLE"}
      '';
      panel-element-positions = ''
        {"0":[{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":false,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}
      '';
      panel-lengths = ''
        {"0":100}
      '';
      panel-sizes = ''
        {"0":40}
      '';
      primary-monitor = 0;
      secondarymenu-contains-appmenu = true;
      secondarymenu-contains-showdetails = true;
      status-icon-padding = 4;
      stockgs-keep-dash = false;
      trans-bg-color = "#282a33";
      trans-gradient-top-color = "#5294e2";
      trans-gradient-top-opacity = 5.0e-2;
      trans-panel-opacity = 0.8;
      trans-use-custom-bg = true;
      trans-use-custom-gradient = true;
      trans-use-custom-opacity = true;
      trans-use-dynamic-opacity = false;
      tray-padding = 2;
      window-preview-title-position = "TOP";
    };

    "org/gnome/shell/extensions/gtile" = {
      follow-cursor = false;
      global-auto-tiling = true;
    };

    "org/gnome/shell/extensions/just-perfection" = {
      accessibility-menu = false;
      activities-button = false;
      clock-menu = true;
      keyboard-layout = true;
      overlay-key = true;
      panel = true;
      panel-in-overview = true;
      quick-settings = true;
      screen-sharing-indicator = true;
      startup-status = 0;
      theme = false;
      workspace-wrap-around = true;
    };

    "org/gnome/shell/extensions/libpanel" = {
      layout = [
        [
          "gnome@main"
          "quick-settings-audio-panel@rayzeq.github.io/main"
        ]
      ];
    };

    "org/gnome/shell/extensions/paperwm" = {
      last-used-display-server = "Wayland";
      open-window-position = 0;
      restore-attach-modal-dialogs = "";
      restore-edge-tiling = "";
      restore-keybinds = ''
        {}\n
      '';
      restore-workspaces-only-on-primary = "";
    };

    "org/gnome/shell/extensions/paperwm/workspaces" = {
      list = [
        "cd23fe2a-83c1-4c74-85c8-7803dabf1972"
        "4a69d6ed-be0a-4e12-b7f4-c405302f4e54"
        "5056e71a-8ec1-48db-9d68-e86d010d5adc"
        "fa4a22f3-c395-4dba-8d90-4507d7be09ae"
      ];
    };

    "org/gnome/shell/extensions/paperwm/workspaces/4a69d6ed-be0a-4e12-b7f4-c405302f4e54" = {
      index = 1;
    };

    "org/gnome/shell/extensions/paperwm/workspaces/5056e71a-8ec1-48db-9d68-e86d010d5adc" = {
      index = 2;
    };

    "org/gnome/shell/extensions/paperwm/workspaces/cd23fe2a-83c1-4c74-85c8-7803dabf1972" = {
      index = 0;
    };

    "org/gnome/shell/extensions/paperwm/workspaces/fa4a22f3-c395-4dba-8d90-4507d7be09ae" = {
      index = 3;
    };

    "org/gnome/shell/extensions/tiling-assistant" = {
      active-window-hint-color = "rgb(82,148,226)";
      last-version-installed = 48;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Qogir-Dark";
    };

    "org/gnome/shell/extensions/vertical-workspaces" = {
      center-app-grid = false;
      center-dash-to-ws = false;
      dash-position = 2;
      search-width-scale = 130;
      show-app-icon-position = 0;
      show-bg-in-overview = true;
      ws-thumbnails-full = false;
      ws-thumbnails-position = 1;
      wst-position-adjust = -75;
    };

    "org/gnome/shell/extensions/wallhub" = {
      wallpaper-paths = [ "/home/askodon/wallpaper" ];
      wallpaper-paths-selected = 1;
    };

    "org/gnome/shell/keybindings" = {
      focus-active-notification = [ "<Super>n" ];
      screenshot = [ "<Super>s" ];
      shift-overview-down = [ "<Super><Alt>Down" ];
      shift-overview-up = [ "<Super><Alt>Up" ];
      switch-to-application-1 = [ ];
      switch-to-application-2 = [ ];
      switch-to-application-3 = [ ];
      switch-to-application-4 = [ ];
      toggle-application-view = [ "Super_L|w" ];
      toggle-message-tray = [
        "<Super>v"
        "<Super>m"
      ];
      toggle-quick-settings = [ ];
    };

    "org/gnome/shell/world-clocks" = {
      locations = [ ];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1725509328;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1725429740;
    };

    "org/gnome/terminal/legacy/profiles:" = {
      list = [
        "b1dcc9dd-5262-4d8d-a863-c897e6d979b9"
        "0fe2278c-631d-4430-a3f5-6cc2fb358076"
      ];
    };

    "org/gnome/terminal/legacy/profiles:/:0fe2278c-631d-4430-a3f5-6cc2fb358076" = {
      visible-name = "test";
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      background-color = "rgb(23,31,43)";
      custom-command = "zellij options --disable-mouse-mode";
      font = "Fira Code 12";
      foreground-color = "rgb(208,207,204)";
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

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [
        (mkTuple [
          0.32156866788864136
          0.5803923010826111
          0.886274516582489
          1.0
        ])
        (mkTuple [
          0.32156863808631897
          0.46666666865348816
          0.7647058963775635
          1.0
        ])
        (mkTuple [
          0.32156866788864136
          0.46666666865348816
          0.7647058963775635
          1.0
        ])
        (mkTuple [
          0.9490196108818054
          0.9490196108818054
          0.9490196108818054
          0.20000000298023224
        ])
        (mkTuple [
          0.9490196108818054
          0.9490196108818054
          0.9490196108818054
          1.0
        ])
        (mkTuple [
          0.1568627506494522
          0.16470588743686676
          0.20000000298023224
          1.0
        ])
        (mkTuple [
          0.9333333373069763
          0.9333333373069763
          0.9333333373069763
          1.0
        ])
        (mkTuple [
          0.9333329796791077
          0.9333329796791077
          0.9333329796791077
          1.0
        ])
      ];
      selected-color = mkTuple [
        true
        0.32156866788864136
        0.5803923010826111
        0.886274516582489
        1.0
      ];
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
        889
        361
      ];
    };

    "org/gtk/settings/color-chooser" = {
      custom-colors = [
        (mkTuple [
          0.682353
          0.560784
          0.921569
          1.0
        ])
        (mkTuple [
          0.2
          0.780392
          0.870588
          1.0
        ])
        (mkTuple [
          0.752941
          0.380392
          0.796078
          1.0
        ])
        (mkTuple [
          0.164706
          0.482353
          0.870588
          1.0
        ])
        (mkTuple [
          0.164706
          0.482353
          0.870588
          1.0
        ])
        (mkTuple [
          0.913725
          0.678431
          4.7059e-2
          1.0
        ])
        (mkTuple [
          0.913725
          0.678431
          4.7059e-2
          1.0
        ])
        (mkTuple [
          0.2
          0.819608
          0.478431
          1.0
        ])
      ];
      selected-color = mkTuple [
        true
        1.0
        1.0
        1.0
        1.0
      ];
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
        23
        15
      ];
      window-size = mkTuple [
        1203
        924
      ];
    };

    "org/x/pix/browser" = {
      browser-sidebar-width = 285;
      fullscreen-sidebar = "hidden";
      fullscreen-thumbnails-visible = false;
      maximized = false;
      properties-visible = false;
      sidebar-sections = [
        "GthFileProperties:expanded"
        "GthFileComment:expanded"
        "GthFileDetails:expanded"
        "GthImageHistogram:expanded"
      ];
      sidebar-visible = true;
      sort-inverse = false;
      sort-type = "file::mtime";
      startup-current-file = "file:///home/askodon/%D0%98%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F/pre.png";
      startup-location = "file:///home/askodon/%D0%98%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F";
      statusbar-visible = true;
      viewer-sidebar = "hidden";
      window-height = 810;
      window-width = 1363;
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

  };
}
