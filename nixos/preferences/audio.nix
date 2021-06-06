{ ... }:

{
    # Enable audio at all.
    sound.enable = true;

    # PulseAudio is something Lennart created.
    # I don’t really know what it does, nor how it relates to ALSA.
    # It is necessary for making the computer emit sound.
    hardware.pulseaudio.enable = true;
}
