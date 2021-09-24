{ ... }:

{
    imports = [
        /home/r/dotfiles-private/network.nix
    ];
    networking.wireless.enable = true;
    networking.wireless.interfaces = [ "wlp2s0" ];
    networking.wireless.userControlled.enable = true;
}
