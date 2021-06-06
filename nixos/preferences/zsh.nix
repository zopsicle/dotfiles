{ pkgs, ... }:

{
    # I want to use Z shell regardless of user.
    users.defaultUserShell = pkgs.zsh;
    programs.zsh.enable = true;

    # Very useful settings.
    programs.zsh.autosuggestions.enable = true;
    programs.zsh.syntaxHighlighting.enable = true;

    # I use this instead of ~/.zshrc,
    # because this works for all users.
    programs.zsh.shellInit = ''
        bindkey -e                   # Emacs
        bindkey ';2D' backward-word  # Shift + ←
        bindkey ';2C' forward-word   # Shift + →
    '';
}
