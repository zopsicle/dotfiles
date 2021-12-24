{ ... }:

{
    networking.wireless.enable = true;

    # Global useDHCP is deprecated.
    # Use per-interface useDHCP.
    networking.useDHCP = false;
    networking.interfaces.wlo1.useDHCP = true;
}
