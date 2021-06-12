{ pkgs, ... }:

{
    # Vim is a really bad editor,
    # but it works in a terminal.
    programs.vim.defaultEditor = true;

    # I really hate the Vim terminal mouse support.
    programs.vim.package = pkgs.vim_configurable.customize {

        # This becomes the name of the vim executable.
        name = "vim";

        vimrcConfig.customRC = ''
            set mouse=
            set ttymouse=
        '';

    };
}
