{ pkgs, ... }:
{
home.packages = with pkgs; [
  qogir-kde
  tela-circle-icon-theme
  bibata-cursors
];
}
