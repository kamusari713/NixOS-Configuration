{
  wayland.windowManager.hyprland = {
    settings = {
      workspace = [
        "5, monitor:HDMI-A-1"
        "4, monitor:HDMI-A-1"
        "3, monitor:HDMI-A-1"
        "1, monitor:HDMI-A-1"
        "6, monitor:HDMI-A-1"
        "10, monitor:HDMI-A-1"
      ];

      windowrulev2 = [
        # Browser
        "workspace 1, class:(vivaldi)$"

        # Spotify
        "float, class:(spotify)"
        "center, class:(spotify)"
        "size, 1000 700, class:(spotify)"

        # Freesmlauncher
        "workspace 3, class:(Freesmlauncher)$"
        "float, class:(Freesmlauncher)$"

        # Telegram
        "workspace 5 silent, class:(TelegramDesktop)$"
        "float, class:(TelegramDesktop)$, title:(Media viewer)$"
        "size, 800 600, class:(TelegramDesktop)$ title:(Media viewer)$"
        "size 970 480, class:(TelegramDesktop)$, title:(Choose Files)$"
        "center, class:(TelegramDesktop)$, title:(Choose Files)$"
        "size 970 480, class:(TelegramDesktop)$, title:(Save File)$"
        "center, class:(TelegramDesktop)$, title:(Save File)$"

        # Vesktop
        "workspace 5 silent, class:(vesktop)$"
        "float, class:(vesktop)$, title:(Open Files)$"
        "size 1160 630, class:(vesktop)$, title:(Open Files)$"
        "center, class:(vesktop)$, title:(Open Files)$"

        # AmneziaVPN
        "workspace 5 silent, title:(AmneziaVPN)$"
        "float, title:(AmneziaVPN)$"
        "center, class:(AmneziaVPN)"

        # Pavucontrol
        "float, class:(org.pulseaudio.pavucontrol)$"
        "center, class:(org.pulseaudio.pavucontrol)$"
        "size 1160 630, class:(org.pulseaudio.pavucontrol)$"

        # QT5CT/QT6CT
        "float, class:(qt.*ct)$"
        "center, class:(qt.*ct)$"
      ];

      blurls = [ "waybar" "rofi" ];

      layerrule = [
        "blur,logout"
        "xray 0, notifications"
        "animation slide, notifications"
      ];

      "$mod" = "SUPER";

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
        "$mod ALT, mouse:272, resizewindow"
      ];
    };
  };
}
