{ ... }:

{
    # The light program allows adjusting screen brightness.
    programs.light.enable = true;

    # When I accidentally press the power button,
    # do not turn off the computer, for fuck’s sake.
    services.logind.extraConfig = "HandlePowerKey=suspend\n";
}
