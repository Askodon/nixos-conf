{ pkgs ? import <nixpkgs> {} }:
  
  pkgs.callPackage ./wg-tools.nix {
  lib = pkgs.lib;
  stdenv = pkgs.stdenv;
  fetchFromGitHub = pkgs.fetchFromGitHub;
  iptables = pkgs.iptables;
  iproute2 = pkgs.iproute2;
  makeWrapper = pkgs.makeWrapper;
  openresolv = pkgs.openresolv;
  procps = pkgs.procps;
  bash = pkgs.bash;
  amneziawg-go = /nix/store/sqlnrbw0xwdlrrs0gds2nmz5frn2p01n-amneziawg-go-0.2.12/bin/amneziawg-go;
  nix-update-script = pkgs.nix-update-script;
}

