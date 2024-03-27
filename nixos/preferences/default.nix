{ pkgs, ... }:

{
    imports = [
        ./audio.nix
        ./core-dumps.nix
        ./desktop.nix
        ./fonts.nix
        ./networking.nix
        ./redshift.nix
        ./software.nix
        ./spyware.nix
        ./ssh.nix
        ./users.nix
        ./vim.nix
        ./yubikey.nix
        ./zsh.nix
    ];
}
