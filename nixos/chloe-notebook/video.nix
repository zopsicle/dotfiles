{ ... }:

{
    # Use Intel graphics only, as it works well.
    # Blacklist nouveau, the buggy nbibia driver.
    services.xserver.videoDrivers = [ "intel" ];
    boot.blacklistedKernelModules = [ "nouveau" ];

    # Enable OpenGL and 32-bit for Steam.
    hardware.opengl.enable = true;
    hardware.opengl.driSupport32Bit = true;
}
