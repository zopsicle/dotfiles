{ pkgs, ... }:

let

    luxi-mono = pkgs.stdenvNoCC.mkDerivation {
        name = "luxi-mono";
        phases = ["installPhase"];
        installPhase = ''
            mkdir --parents "$out"/share/fonts/luxi
            ln --symbolic \
                ${../../fonts/luxi-mono/luximb.ttf} \
                ${../../fonts/luxi-mono/luximbi.ttf} \
                ${../../fonts/luxi-mono/luximr.ttf} \
                ${../../fonts/luxi-mono/luximri.ttf} \
                "$out"/share/fonts/luxi
        '';
    };

in

{
    # Globally installed fonts.
    fonts.packages = [
        pkgs.terminus_font_ttf
        luxi-mono
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
