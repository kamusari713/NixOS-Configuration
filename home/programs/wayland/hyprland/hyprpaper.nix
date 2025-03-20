{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "/home/kamusari/nixos-config/wallpapers/Kurumi-Ebisuzawa.png"
        "/home/kamusari/nixos-config/wallpapers/this-wallpaper-is-not-available.png"
      ];

      wallpaper = [
        "DP-1, /home/kamusari/nixos-config/wallpapers/Kurumi-Ebisuzawa.png"
        "HDMI-A-1, /home/kamusari/nixos-config/wallpapers/this-wallpaper-is-not-available.png"
      ];
    };
  };
}
