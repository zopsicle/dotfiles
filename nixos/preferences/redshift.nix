{ ... }:

{
    # Redshift makes the screen less blue at night.
    services.redshift.enable = true;
    services.redshift.temperature.night = 2500;
    location.latitude = 52.0843147;
    location.longitude = 4.94241;
}
