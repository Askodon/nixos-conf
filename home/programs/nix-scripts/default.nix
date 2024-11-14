{ pkgs, ... }:

let
  ehh = import ./ehh.nix { inherit pkgs; };
  ed = import ./ed.nix { inherit pkgs; };
  clipboardArtemis = import ./clipboardArtemis.nix { inherit pkgs; };
  mainMenuArtemis = import ./mainMenuArtemis.nix { inherit pkgs; };
  break_time = import ./breakTime.nix { inherit pkgs; };

  github = import ./github.nix { inherit pkgs; };

in

{
  home.packages = [
    breakTime
    mainMenuArtemis
    ehh
    clipboardArtemis
    ed
    github
  ];
}
