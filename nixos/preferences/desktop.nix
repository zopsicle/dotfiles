{ pkgs, ... }:

{
    # X works, unlike Wayland.
    services.xserver.enable = true;

    # Display manager manages the login screen.
    # Why it’s called a display manager
    # instead of a login manager, I don’t know.
    services.displayManager.sddm.enable = true;

    # Window manager manages windows after logging in.
    # i3-gaps provides gaps between the windows.
    services.xserver.windowManager.i3.enable = true;
    services.xserver.windowManager.i3.package = pkgs.i3-gaps;

    # Enable the compose key.
    services.xserver.xkb.options = "ctrl:nocaps, compose:ralt";

    # Enable touchpad support.
    services.libinput.enable = true;
    services.libinput.touchpad.naturalScrolling = false;
    services.libinput.touchpad.tapping = true;

    # Enable drawing tablet support.
    services.xserver.wacom.enable = true;

    # Make Qt apps look dark.
    qt.enable = true;
    qt.platformTheme = "gtk2";
    qt.style = "gtk2";
}
