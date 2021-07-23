{ lib, ... }:

{
    # These settings were automatically discovered
    # during the NixOS installation process.
    boot.initrd.availableKernelModules = [
        "xhci_pci" "ahci" "nvme" "rtsx_pci_sdmmc"
    ];
    boot.kernelModules = [
        "kvm-intel"
    ];

    # No idea why, but this is needed for Wi-Fi to work.
    hardware.enableRedistributableFirmware = true;
}
