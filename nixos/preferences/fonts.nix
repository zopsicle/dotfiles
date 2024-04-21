{ pkgs, ... }:

{
    # Globally installed fonts.
    fonts.packages = [
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
