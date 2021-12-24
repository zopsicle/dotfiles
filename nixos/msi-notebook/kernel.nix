{ lib, ... }:

{
    # These settings were automatically discovered
    # during the NixOS installation process.
    boot.initrd.availableKernelModules = [
        "xhci_pci"
        "thunderbolt"
        "nvme"
        "usb_storage"
        "sd_mod"
        "rtsx_pci_sdmmc"
    ];
    boot.initrd.kernelModules = [
        "dm-snapshot"
    ];
    boot.kernelModules = [
        "kvm-intel"
    ];
    boot.extraModulePackages = [];

    # Configure requirements for resuming from hibernation.
    # https://confluence.jaytaala.com/display/TKB/Use+a+swap+file+and+enable+hibernation+on+Arch+Linux+-+including+on+a+LUKS+root+partition
    boot.kernelParams = ["resume_offset=4296704"];
    boot.resumeDevice = "/dev/disk/by-uuid/7db17f43-059b-43cc-9870-ead20b083eb1";

    # Required for WiFi to work.
    hardware.enableRedistributableFirmware = true;
}
