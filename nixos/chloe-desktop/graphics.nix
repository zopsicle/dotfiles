{ ... }:

{
    hardware.opengl.enable = true;

    # This option is needed for Steam to work.
    hardware.opengl.driSupport32Bit = true;

    services.xserver.videoDrivers = [ "amdgpu" ];
}
