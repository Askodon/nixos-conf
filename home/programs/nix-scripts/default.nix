{ pkgs, ... }:

let
  ehh = import ./ehh.nix { inherit pkgs; };
  ed = import ./ed.nix { inherit pkgs; };
in

{
  home.packages = [
    ehh
    ed
  ];
}
