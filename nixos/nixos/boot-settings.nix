{ pkgs, ... }:
{
  # Bootloader.
  boot = {
    plymouth.enable = true;
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    blacklistedKernelModules = [ "hyperv_fb" ]; # hyper-v settings
    kernelPackages = pkgs.linuxPackages_xanmod_stable; # test
  };
  #swapfile
  swapDevices = [
    {
      device = "/swapfile";
      size = 2 * 1024; # 2GB
    }
  ];
}
