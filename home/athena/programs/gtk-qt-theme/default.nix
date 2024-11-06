{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qogir-kde
    qogir-theme
    tela-circle-icon-theme
    bibata-cursors
  ];
}
