{ pkgs, ... }:

{
    nixpkgs.config.packageOverrides = pkgs: {

        # Latest Minecraft requires a newer JDK.
        multimc =
            let
                with_jdk16 = pkgs.multimc.override { jdk8 = pkgs.jdk16; };
                with_patches = with_jdk16.overrideAttrs (super: {
                    patches = [ multimc/java-version.patch ];
                });
            in
                with_patches;

        # Apply a patch to fix a bug [1].
        # [1]: https://github.com/libpinyin/libpinyin/pull/119
        libpinyin = pkgs.libpinyin.overrideAttrs (super: {
            patches = [ libpinyin/pull-119.patch ];
        });

    };

    # Packages that are installed globally.
    environment.systemPackages = [
        pkgs.ack                    # Like grep but for source code.
        pkgs.bind                   # Provides dig command.
        pkgs.binutils               # Provides objdump command.
        pkgs.blender                # 3D modeling program.
        pkgs.blockbench-electron    # 3D modeling program for Minecraft models.
        pkgs.cura                   # Used for 3D printing.
        pkgs.dconf                  # No idea, but needed.
        pkgs.electrum               # Bitcoin wallet.
        pkgs.evince                 # PDF reader.
        pkgs.feh                    # Sets wallpaper.
        pkgs.ffmpeg                 # Converts videos.
        pkgs.file                   # Provides file command.
        pkgs.firefox                # Web browser.
        pkgs.git                    # Version control system.
        pkgs.hexchat                # Chat app.
        pkgs.htop                   # Process monitor.
        pkgs.imagemagick7           # Converts images.
        pkgs.inkscape               # Vector graphics editor.
        pkgs.jq                     # Provides jq command.
        pkgs.krita                  # Bitmap graphics editor.
        pkgs.lxappearance           # Needed to change GTK+ preferences.
        pkgs.magic-wormhole         # File transfer tool.
        pkgs.man-pages              # Manual pages.
        pkgs.monero-gui             # Monero wallet.
        pkgs.multimc                # Minecraft launcher.
        pkgs.obs-studio             # Live streaming tool.
        pkgs.openscad               # CAD tool.
        pkgs.pavucontrol            # GUI for adjusting audio volume.
        pkgs.peek                   # Animated GIF recorder.
        pkgs.picard                 # Fixes ID3 tags in music.
        pkgs.rofi                   # Application picker (Alt+D).
        pkgs.sakura                 # Terminal emulator.
        pkgs.sqlite-interactive     # Provides sqlite3 command.
        pkgs.steam                  # Steam proprietary game store.
        pkgs.tdesktop               # Chat app.
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

        # Icon themes for GTK+ apps.
        # This shit still doesn’t work well.
        pkgs.gnome3.adwaita-icon-theme
        pkgs.hicolor-icon-theme
    ];
}
