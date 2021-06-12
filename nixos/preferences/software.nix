{ pkgs, ... }:

let
    # Latest Minecraft requires a newer JDK.
    multimc_jdk16 = pkgs.multimc.override { jdk8 = pkgs.jdk16; };
    multimc_patched = multimc_jdk16.overrideAttrs (super: {
        patches = [ multimc/java-version.patch ];
    });
    multimc = multimc_patched;
in

{
    # Packages that are installed globally.
    environment.systemPackages = [
        pkgs.ack                    # Like grep but for source code.
        pkgs.bind                   # Provides dig command.
        pkgs.binutils               # Provides objdump command.
        pkgs.blender                # 3D modeling program.
        pkgs.cura                   # Used for 3D printing.
        pkgs.dconf                  # No idea, but needed.
        pkgs.electrum               # Bitcoin wallet.
        pkgs.feh                    # Sets wallpaper.
        pkgs.ffmpeg                 # Converts videos.
        pkgs.file                   # Provides file command.
        pkgs.firefox                # Web browser.
        pkgs.git                    # Version control system.
        pkgs.hexchat                # IRC client.
        pkgs.htop                   # Process monitor.
        pkgs.imagemagick7           # Converts images.
        pkgs.inkscape               # Vector graphics editor.
        pkgs.jq                     # Provides jq command.
        pkgs.krita                  # Bitmap graphics editor.
        pkgs.lxappearance           # Needed to change GTK+ preferences.
        pkgs.man-pages              # Manual pages.
        pkgs.obs-studio             # Live streaming tool.
        pkgs.pavucontrol            # GUI for adjusting audio volume.
        pkgs.peek                   # Animated GIF recorder.
        pkgs.picard                 # Fixes ID3 tags in music.
        pkgs.rofi                   # Application picker (Alt+D).
        pkgs.sakura                 # Terminal emulator.
        pkgs.sqlite-interactive     # Provides sqlite3 command.
        pkgs.steam                  # Steam proprietary game store.
        pkgs.tdesktop               # Telegram desktop.
        pkgs.theme-vertex           # GTK+ theme.
        pkgs.thunderbird            # Email client.
        pkgs.transmission-gtk       # BitTorrent client.
        pkgs.tree                   # Provides tree command.
        pkgs.unzip                  # Provides unzip command.
        pkgs.vlc                    # VLC media player.
        pkgs.vscode                 # Good text editor.
        pkgs.wget                   # Provides wget command.
        pkgs.youtube-dl-light       # Downloads YouTube videos.
        pkgs.zip                    # Provides zip command.
        pkgs.xpad                   # Sticky notes app.

        # Icon themes for GTK+ apps.
        # This shit still doesn’t work well.
        pkgs.gnome3.adwaita-icon-theme
        pkgs.hicolor-icon-theme

        # Patched programs.
        multimc                     # Minecraft launcher.
    ];
}
