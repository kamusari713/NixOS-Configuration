{
  wayland.windowManager.hyprland = {
    settings = {
      workspace = [
        "5, monitor:DP-1"
        "4, monitor:DP-1"
        "3, monitor:DP-1"
        "1, monitor:DP-1"
        "6, monitor:HDMI-A-1"
        "10, monitor:HDMI-A-1"
      ];

      windowrulev2 = [
        # Chrome
        "workspace 1, class:(vivaldi)$"

        # Prism Launcher
        "workspace 3, class:(PrismLauncher)$"
        "float, class:(PrismLauncher)$, title:(Prism Launcher 9.2)$"
        "size 770 620, class:(PrismLauncher)$, title:(Prism Launcher 9.2)$"
        "center, class:(PrismLauncher)$, title:(Prism Launcher 9.2)$"
        "move, 887 200, class:(PrismLauncher)$, title:(Prism Launcher 9.2)$"

        "float, class:(PrismLauncher)$, title:(Console window)$"
        "size 770 620, class:(PrismLauncher)$, title:(Console window)$"
        "center, class:(PrismLauncher)$, title:(Console window)$"
        "move, 105 200, class:(PrismLauncher)$, title:(Console window)$"

        # GTNH
        "workspace 4, class:(GT: New Horizons 2.7.3)$"
        "fullscreenstate:* 1, class:(GT: New Horizons 2.7.3)$"

        # Telegram
        "workspace 5 silent, class:(TelegramDesktop)$"
        "float, class:(TelegramDesktop)$, title:(Media viewer)$"
        "size, 800 600, class:(TelegramDesktop)$ title:(Media viewer)$"
        "size 970 480, class:(TelegramDesktop)$, title:(Choose Files)$"
        "center, class:(TelegramDesktop)$, title:(Choose Files)$"
        "size 970 480, class:(TelegramDesktop)$, title:(Save File)$"
        "center, class:(TelegramDesktop)$, title:(Save File)$"

        # Vesktop
        "workspace 10 silent, class:(vesktop)$"
        "float, class:(vesktop)$, title:(Open Files)$"
        "size 1160 630, class:(vesktop)$, title:(Open Files)$"
        "center, class:(vesktop)$, title:(Open Files)$"

        # AmneziaVPN
        "workspace 10 silent, title:(AmneziaVPN)$"
        "float, title:(AmneziaVPN)$"

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
