# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "ahci" "xhci_pci" "usb_storage" "sd_mod" "sdhci_pci" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/e9851ec8-330b-41a5-b560-d99386a7edf3";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/ec836b9c-4efb-4a88-b12a-0cdcf0466958"; }
    ];

  nix.maxJobs = lib.mkDefault 2;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
