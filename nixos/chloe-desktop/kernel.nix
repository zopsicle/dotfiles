{ lib, ... }:

{
    # These settings were automatically discovered
    # during the NixOS installation process.
    boot.initrd.availableKernelModules = [
        "xhci_pci" "ehci_pci" "ahci"
        "usbhid" "usb_storage" "sd_mod"
        "amdgpu"
    ];
    boot.initrd.kernelModules = [ ];
    boot.kernelModules = [ "kvm-intel" ];

    # I have no idea what this means.
    # Computer works with this option.
    hardware.enableRedistributableFirmware = lib.mkDefault true;
}
