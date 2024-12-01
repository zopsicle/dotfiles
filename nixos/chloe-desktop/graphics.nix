{ ... }:

{
    hardware.graphics.enable = true;

    # This option is needed for Steam to work.
    hardware.graphics.enable32Bit = true;

    services.xserver.videoDrivers = [ "amdgpu" ];
}
