{ lib, ... }:

{
    # Laptop works for longer when saving power.
    powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";

    # Why is this disabled? I forgot.
    powerManagement.powertop.enable = false;
}
