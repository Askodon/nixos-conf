{ pkgs, ... }:
pkgs.writeScriptBin "breakTime" ''
  #!/usr/bin/env nu
  while true {
    sleep 3600sec
    notify-send 'Break-time' 'Time to break, time to break.'
  }
''
