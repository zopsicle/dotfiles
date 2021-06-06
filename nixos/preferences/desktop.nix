{ pkgs, ... }:

{
    # X works, unlike Wayland.
    services.xserver.enable = true;

    # Display manager manages the login screen.
    # Why it’s called a display manager
    # instead of a login manager, I don’t know.
    services.xserver.displayManager.sddm.enable = true;

    # Window manager manages windows after logging in.
    # i3-gaps provides gaps between the windows.
    services.xserver.windowManager.i3.enable = true;
    services.xserver.windowManager.i3.package = pkgs.i3-gaps;

    # Enable the compose key.
    services.xserver.xkbOptions = "ctrl:nocaps, compose:ralt";
}
