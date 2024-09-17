{ pkgs, ... }:
{
  # Bootloader.
  boot = {
    #plymouth.enable = true;
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
      #canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    #blacklistedKernelModules = [ "hyperv_fb" ]; # hyper-v settings
    #kernelPackages = pkgs.linuxPackages_xanmod_stable; # test
    kernel.sysctl."vm.max_map_count" = 2147483642;
  };

  zramSwap.enable = true;

}
