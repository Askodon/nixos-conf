{ pkgs, ... }:

let
  ehh = import ./ehh.nix { inherit pkgs; };
  ed = import ./ed.nix { inherit pkgs; };
  clipboard = import ./clipboard.nix { inherit pkgs; };

  github = import ./github.nix { inherit pkgs; };

in

{
  home.packages = [
    ehh
    clipboard
    ed
    github
  ];
}
