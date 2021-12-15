{ ... }:

let enable = false; in

if !enable then {
} else {

    imports = [
        /home/r/alephium-nix/nixos-module.nix
    ];

    services.alephium.enable = true;

    services.grafana.enable = true;
    services.prometheus.enable = true;

    services.prometheus.scrapeConfigs = [
        {
            job_name = "alephium";
            scrape_interval = "10s";
            static_configs = [ { targets = [ "localhost:12973" ]; } ];
        }
    ];

}
