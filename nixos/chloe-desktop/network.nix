{ ... }:

{
    # I have no idea what this means.
    # Computer works with these options.
    networking.useDHCP = false;
    networking.interfaces.enp5s0.useDHCP = true;

    # This computer does not use Wi-Fi.
    networking.wireless.enable = false;
}
