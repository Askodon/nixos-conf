{ pkgs, ... }:
{
  # Bootloader.
  boot = {
    loader.systemd-boot.enable = false;
    loader.grub = {
      enable = true;
      device = "nodev";
      useOSProber = true;
      efiSupport = true;
      efiInstallAsRemovable = true;
      extraEntriesBeforeNixOS = true;
    };
    loader.efi = {
      efiSysMountPoint = "/boot";
    };
    # For games
    kernel.sysctl."vm.max_map_count" = 2147483642;
  };

  zramSwap.enable = true;

}
