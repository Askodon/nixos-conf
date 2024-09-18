{
  virtualisation.containers.enable = true;
  programs.virt-manager.enable = true;
  virtualisation = {
    libvirtd.enable = true;
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
