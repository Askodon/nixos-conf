{ pkgs, ... }:
pkgs.writeScriptBin "clipboardArtemis" ''
  #!/usr/bin/env lua
  os.execute("clipman pick --tool=CUSTOM --tool-args='fuzzel -d foot --icon-theme WhiteSur-dark -w 40 -y 40 -f 'Roboto'-12 --line-height=20 -t ffffffff -p 'History:' ' ")
''
