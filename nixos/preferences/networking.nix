{ ... }:

{
    # My router or ISP defaults to a shitty nameserver.
    # Use these Google-provided ones instead. (Ew.)
    networking.nameservers = [ "8.8.8.8" "8.8.4.4" ];

    # Firewall is annoying on workstation.
    networking.firewall.enable = false;
}
