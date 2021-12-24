{ ... }:

let
    ssd-options = [ "noatime" "discard" ];
in

{
    fileSystems."/" = {
        device = "/dev/disk/by-uuid/7db17f43-059b-43cc-9870-ead20b083eb1";
        options = ssd-options;
        fsType = "ext4";
    };
  
    fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/3609-6607";
        fsType = "vfat";
    };
  
    swapDevices = [
        { device = "/var/swapfile"; }
    ];
}
