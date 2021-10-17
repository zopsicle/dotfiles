{ lib, ... }:

{
    # Disable imperative user creation.
    # Only create users using this file.
    users.mutableUsers = false;

    # This is the user I normally use.
    users.users.r.isNormalUser = true;
    users.users.r.hashedPassword = lib.fileContents ./passwd/r.txt;
    users.users.r.extraGroups = [ "audio" "vboxusers" "video" "wheel" "wireshark" ];
}
