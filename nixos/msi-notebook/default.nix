{ ... }:

{
    imports = [
        ./boot-loader.nix
        ./file-systems.nix
        ./hostname.nix
        ./kernel.nix
        ./luks.nix
        ./microcode.nix
        ./network.nix
        ./nix.nix
        ./notebook-features.nix
        ./power.nix
        ./time-zone.nix
        ./video.nix
    ];
}
