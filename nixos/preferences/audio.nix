{ ... }:

{
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        extraConfig.pipewire.no-x11-bell."context.properties"."module.x11.bell" = false;
        pulse.enable = true;
    };

    security.rtkit.enable = true;
}
