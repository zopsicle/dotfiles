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

    # Enable touchpad support.
    services.xserver.libinput.enable = true;
    services.xserver.libinput.touchpad.naturalScrolling = false;
    services.xserver.libinput.touchpad.tapping = true;

    # Enable IBus input method.
    i18n.inputMethod.enabled = "ibus";
    i18n.inputMethod.ibus.engines = [
        pkgs.ibus-engines.libpinyin
    ];

    # Build ibus-libpinyin without keylogger so it cannot accidentally be
    # enabled.
    nixpkgs.config.packageOverrides = pkgs: {
        ibus-engines.libpinyin =
            pkgs.ibus-engines.libpinyin.overrideAttrs (self: super: {
                configureFlags = super.configureFlags ++ ["--disable-cloud-input-mode"];
            });
    };

    # Enable drawing tablet support.
    services.xserver.wacom.enable = true;

    # Allow Qt style customization.
    qt.enable = true;
    qt.platformTheme = "gtk2";
    qt.style = "gtk2";
}
