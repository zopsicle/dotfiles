{ ... }:

let
    ssd-options = [ "noatime" "discard" ];
    hdd-options = [ "noatime" ];
in

{
    fileSystems."/" = {
        device  = "/dev/disk/by-uuid/420071bf-a3e8-4443-a7a4-ed400c1fcd74";
        options = ssd-options;
        fsType  = "ext4";
    };

    fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/BAEE-D4D5";
        fsType = "vfat";
    };

    fileSystems."/media/extra0" = {
        device  = "/dev/disk/by-uuid/ffd6284d-8c1f-4087-9059-2387b93b4e98";
        options = hdd-options;
        fsType  = "ext4";
    };

    swapDevices = [
        {
            device = "/dev/disk/by-uuid/70ae7d17-afef-44c6-bb7a-9996bea8a40a";
        }
    ];
}
