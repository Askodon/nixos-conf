{ inputs, pkgs, config, ... }:
{
  imports = [ inputs.nvchad4nix.homeManagerModule ];
  programs.nvchad = {  
    enable = true;
    hm-activation = true;
    backup = true;
    };
  }
