{
  inputs,
  pkgs,
  config,
  ...
}:
{
  imports = [ inputs.nvchad4nix.homeManagerModule ];

  home.packages = with pkgs; [
    lua-language-server
    nil
    nixpkgs-fmt
  ];

  programs.nvchad = {
    enable = true;
    hm-activation = true;
    backup = true;
  };
}
