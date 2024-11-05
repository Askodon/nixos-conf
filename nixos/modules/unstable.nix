{ pkgs ? import <nixpkgs> {} }:

let
  unstable = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/heads/nixos-unstable.tar.gz") {};
  myPkgs = pkgs // {
    neovim = unstable.neovim;
  };
in
{
  environment.systemPackages = with myPkgs; [
    neovim
  ];

}

