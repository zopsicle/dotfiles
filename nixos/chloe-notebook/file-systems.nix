{ ... }:

let
    ssd-options = [ "noatime" "discard" ];
in

{
    fileSystems."/" = {
        device = "/dev/disk/by-uuid/9d2de67e-a258-43c0-8304-c8fa01f8efe3";
        options = ssd-options;
        fsType = "ext4";
    };

    fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/1992-5FF9";
        fsType = "vfat";
    };

    swapDevices = [
        { device = "/dev/disk/by-uuid/84986152-4abd-42bc-bd8b-3699f205d089"; }
    ];
}
