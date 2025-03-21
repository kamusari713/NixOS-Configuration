{ pkgs, ... }: {
  imports = [
    ./env.nix
    ./hyprpaper.nix
    ./input.nix
    ./keybindings.nix
    ./launch.nix
    ./monitors.nix
    ./styling.nix
    ./workspaces-windows.nix
  ];

  home.packages = with pkgs; [
    qt5.qtwayland
    qt6.qtwayland

    libsForQt5.qt5ct
    qt6ct

    cliphist
    wl-color-picker
    wl-clipboard
    dconf
    brightnessctl

    hyprgraphics
    hyprpaper
    hyprshot
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    systemd = {
      enable = true;
      variables = [ "--all" ];
      extraCommands = [
        "systemctl --user stop graphical-session.target"
        "systemctl --user start hyprland-session.target"
      ];
    };
  };
}
