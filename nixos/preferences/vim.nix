{ pkgs, ... }:

{
    # Vim is a really bad editor,
    # but it works in a terminal.
    programs.vim.defaultEditor = true;

    # Install vimrc for all users (not in home directory).
    programs.vim.package = pkgs.vim_configurable.customize {

        # This becomes the name of the vim executable.
        name = "vim";

        vimrcConfig.customRC = ''
            " I really hate the Vim terminal mouse support.
            set mouse=
            set ttymouse=

            " Enable syntax highlighting.
            syntax on

            " Make backspace behave like any reasonable being would expect.
            " Holy shit the default behavior is so fucking broken.
            set backspace=indent,eol,start
        '';

    };
}
