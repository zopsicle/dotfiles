{ ... }:

{
    # Arian says systemd-boot is based.
    boot.loader.systemd-boot.enable = true;

    # I have no idea what this means.
    # Computer works with this option.
    boot.loader.efi.canTouchEfiVariables = true;

    # Give me some time to select a boot option.
    # The time it takes for my computer screen to boot
    # is longer than the time it takes for the computer to boot
    # if this setting were left to its default value.
    boot.loader.timeout = 60;
}
