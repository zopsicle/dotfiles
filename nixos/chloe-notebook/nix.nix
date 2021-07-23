{ lib, ... }:

{
    # Allow Nix to build in parallel
    # with this number of cores.
    nix.maxJobs = lib.mkDefault 8;
}
