{ pkgs, ... }:

{
    imports = [
        ./audio.nix
        ./core-dumps.nix
        ./desktop.nix
        ./fonts.nix
        ./input-methods.nix
        ./networking.nix
        ./nix.nix
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
