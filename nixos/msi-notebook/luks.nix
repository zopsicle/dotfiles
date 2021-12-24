{ ... }:

{
    boot.initrd.luks.devices = {
        luks = {
            device = "/dev/disk/by-partuuid/75c907ec-62d0-402b-9eb0-ce43c0450f52";
            allowDiscards = true;
            preLVM = true;
        };
    };
}
