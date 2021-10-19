{ ... }:

{
    boot.kernelPatches = [
        {
            name = "dualshock4";
            patch = kernel/dualshock4.patch;
        }
    ];
}
