{
  wayland.windowManager.hyprland = {
    settings = {
      # Misc
      misc = {
        vfr = 0;
        force_default_wallpaper = -1;
        disable_hyprland_logo = false;
      };

      # Render settings
      render = {
        explicit_sync = 2;
        explicit_sync_kms = 0;
      };

      # OpenGL settings
      opengl = {
        nvidia_anti_flicker = 0;
      };

      # Debug settings
      debug = {
        damage_tracking = 0;
      };

      # Cursor settings
      cursor = {
        no_hardware_cursors = true;
      };

      # General settings
      general = {
        gaps_in = 2;
        gaps_out = 2;
        resize_on_border = false;
        layout = "dwindle";
        border_size = 4;
        "col.active_border" = "rgb(D5C4A1)";
        "col.inactive_border" = "rgb(D5C4A1)";
      };

      # Animations
      animations = {
        enabled = true;
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      # Layouts
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };
    };
  };
}
