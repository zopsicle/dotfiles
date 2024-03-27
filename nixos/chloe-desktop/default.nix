{ lib, ... }:

{
    imports = [
        ./alephium.nix
        ./boot-loader.nix
        ./file-systems.nix
        ./graphics.nix
        ./hostname.nix
        ./kernel.nix
        ./network.nix
        ./time-zone.nix
    ];
}
