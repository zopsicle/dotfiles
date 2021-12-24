{ ... }:

{
    # The light program allows adjusting screen brightness.
    programs.light.enable = true;

    # When I accidentally press the power button,
    # do not turn off the computer.
    services.logind.extraConfig = "HandlePowerKey=hibernate\n";

    # Suspend when closing laptop lid.
    services.logind.lidSwitch = "hibernate";
}
