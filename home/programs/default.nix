{
  imports = [
    ./rofi
    # ./tmux
    ./wayland

    ./fastfetch
    ./git.nix
    ./java.nix
    ./kitty.nix
    ./mako.nix
    ./shell.nix
  ];

  programs.home-manager.enable = true;
}
