{ pkgs, ... }:

let
    comic-mono = pkgs.fetchzip {
        name = "comic-mono";
        url = "https://github.com/dtinth/comic-mono-font/archive/9a96d04cdd2919964169192e7d9de5012ef66de4.zip";
        sha256 = "0x5s0wbmhn04l9sd4jb1mia2j53qid5n2r0gb7w3m5vnfr86slip";
        postFetch = ''
            mkdir --parents "$out/share/fonts"
            unzip -j "$downloadedFile" '*.ttf' -d "$out/share/fonts/truetype"
        '';
    };
in

{
    # Globally installed fonts.
    fonts.fonts = [
        comic-mono
        pkgs.fixedsys-excelsior
        pkgs.montserrat
        pkgs.noto-fonts-cjk
        pkgs.roboto
        pkgs.ubuntu_font_family
        pkgs.hack-font
        pkgs.terminus_font_ttf
    ];

    # Disable anti-aliasing for some fonts.
    fonts.fontconfig.localConf = ''
        <match target="font">
            <test name="family" qual="any">
                <string>Terminus (TTF)</string>
            </test>
            <edit name="antialias" mode="assign">
                <bool>false</bool>
            </edit>
        </match>
    '';
}
