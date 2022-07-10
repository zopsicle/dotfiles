{ pkgs, ... }:

{
    nixpkgs.config.packageOverrides = pkgs: {

        # This fixes a bug where VS Code expects a keychain to be running [1].
        # [1]: https://github.com/microsoft/vscode/issues/146553
        vscode = pkgs.vscode.overrideAttrs (super: {
            postInstall = (super.postInstall or "") + ''
                wrapProgram "$out/bin/code" --add-flags --disable-keytar
            '';
        });

    };

    # Packages that are installed globally.
    environment.systemPackages = [
        pkgs.ack                    # Like grep but for source code.
        pkgs.bind                   # Provides dig command.
        pkgs.binutils               # Provides objdump command.
        pkgs.blender                # 3D modeling program.
        pkgs.cicero-tui             # Unicode browser.
        pkgs.cmus                   # Music player.
        pkgs.dconf                  # No idea what this is, but needed.
        pkgs.evince                 # PDF reader.
        pkgs.feh                    # Program to set wallpaper.
        pkgs.ffmpeg                 # Converts videos.
        pkgs.file                   # Provides file command.
        pkgs.firefox                # Web browser.
        pkgs.gcolor2                # Color picker.
        pkgs.git                    # Version control system.
        pkgs.hexchat                # Chat app.
        pkgs.htop                   # Process monitor.
        pkgs.i3blocks               # Adds buttons to i3bar.
        pkgs.imagemagick7           # Converts images.
        pkgs.inkscape               # Vector graphics editor.
        pkgs.jq                     # Provides jq command.
        pkgs.krita                  # Bitmap graphics editor.
        pkgs.magic-wormhole         # File transfer tool.
        pkgs.man-pages              # Manual pages.
        pkgs.monero-gui             # Monero wallet.
        pkgs.pavucontrol            # Program to set audio volume.
        pkgs.peek                   # Animated GIF recorder.
        pkgs.picard                 # Fixes ID3 tags in music.
        pkgs.picom                  # X compositor.
        pkgs.polymc                 # Minecraft launcher.
        pkgs.renderdoc              # OpenGL/Vulkan debugging program.
        pkgs.rofi                   # Application picker (Alt+D).
        pkgs.sakura                 # Terminal emulator.
        pkgs.sqlite-interactive     # Provides sqlite3 command.
        pkgs.steam                  # Steam proprietary game store.
        pkgs.tdesktop               # Chat app.
        pkgs.theme-vertex           # GTK dark theme.
        pkgs.thunderbird            # Email client.
        pkgs.transmission-gtk       # BitTorrent client.
        pkgs.tree                   # Provides tree command.
        pkgs.unzip                  # Provides unzip command.
        pkgs.vlc                    # VLC media player.
        pkgs.vscode                 # Good text editor.
        pkgs.wget                   # Provides wget command.
        pkgs.wineWowPackages.full   # For running Windows programs.
        pkgs.wireshark-qt           # Network traffic analyzer.
        pkgs.yt-dlp-light           # Downloads YouTube videos.
        pkgs.zip                    # Provides zip command.

        # Icon themes for GTK.
        pkgs.gnome3.adwaita-icon-theme
        pkgs.hicolor-icon-theme
    ];

    # Enable using wireshark as non-root.
    programs.wireshark.enable = true;

    # Enable using Android debugger.
    programs.adb.enable = true;
}
