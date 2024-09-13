{ pkgs, ... }:
{
  # Bootloader.
  boot = {
    #plymouth.enable = true;
    #loader.systemd-boot.enable = true;
    loader.grub = {
      enable = true;
      device = "nodev";
      useOSProber = true;
      efiSupport = true;
    };
    loader.efi.canTouchEfiVariables = true;
    blacklistedKernelModules = [ "hyperv_fb" ]; # hyper-v settings
    #kernelPackages = pkgs.linuxPackages_xanmod_stable; # test
    kernel.sysctl."vm.max_map_count" = 2147483642;
  };

  zramSwap.enable = true;

}
