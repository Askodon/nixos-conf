{ pkgs, ... }:

let
  ehh = import ./ehh.nix { inherit pkgs; };
  ed = import ./ed.nix { inherit pkgs; };
  clipboardArtemis = import ./clipboardArtemis.nix { inherit pkgs; };
  mainMenuArtemis = import ./mainMenuArtemis.nix { inherit pkgs; };
  powerMenuArtemis = import ./powerMenuArtemis.nix { inherit pkgs; };
  screenshotArtemis = import ./screenshotArtemis.nix { inherit pkgs; };
  breakTime = import ./breakTime.nix { inherit pkgs; };

  github = import ./github.nix { inherit pkgs; };

in

{
  home.packages = [
    screenshotArtemis
    powerMenuArtemis
    breakTime
    mainMenuArtemis
    ehh
    clipboardArtemis
    ed
    github
  ];
}
