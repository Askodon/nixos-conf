{ pkgs, ... }:

let
  myMenuScript = pkgs.writeScriptBin "erhh" ''
    #!/usr/bin/env bash
    echo "Это меню!"
    # Здесь можно добавить логику для вашего меню
  '';
in

{
  home.packages = [
    myMenuScript
  ];
}
