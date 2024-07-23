{
  virtualisation.containers.enable = true;
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };
  #flatpak error fix
  xdg.portal.enable = true;
  xdg.portal.xdgOpenUsePortal = true;
}
