{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "~/.wallpapers/Kurumi-Ebisuzawa.png"
        "~/.wallpapers/gruvbox-rainbow-nix.png"
      ];

      wallpaper = [
        "DP-1, ~/.wallpapers/girl.png"
        "HDMI-A-1, ~/.wallpapers/girl.png"
      ];
    };
  };
}
