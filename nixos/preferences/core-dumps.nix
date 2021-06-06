{ ... }:

{
    # I do not use core dumps, but some programs produce them.
    # These settings stop that from happening.
    security.pam.loginLimits = [
        {
            domain = "*";
            item = "core";
            type = "hard";
            value = "0";
        }
    ];
    systemd.coredump.extraConfig = ''
        Storage=none
    '';
}
