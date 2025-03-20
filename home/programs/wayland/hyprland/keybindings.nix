{
  wayland.windowManager.hyprland = {
    settings = {
      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, Q, exec, kitty"
        "$mainMod, M, exec, prismlauncher"
        "$mainMod, D, exec, vivaldi"
        "$mainMod, T, exec, telegram-desktop"
        "$mainMod, S, exec, obsidian"
        "$mainMod, C, killactive"

        "$mainMod CTRL, P, exec, poweroff"
        "$mainMod CTRL, R, exec, reboot"

        "$mainMod, SPACE, exec, rofi -show drun"
        "$mainMod SHIFT, S, exec, hyprshot -m region --clipboard-only"
        "$mainMod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"

        "$mainMod, F, togglefloating"
        "$mainMod, P, fullscreen"
        "$mainMod, G, togglesplit"

        "$mainMod, h, movefocus, l"
        "$mainMod, j, movefocus, d"
        "$mainMod, k, movefocus, u"
        "$mainMod, l, movefocus, r"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        "$mainMod SHIFT, h, movewindow, l"
        "$mainMod SHIFT, j, movewindow, d"
        "$mainMod SHIFT, k, movewindow, u"
        "$mainMod SHIFT, l, movewindow, r"

        "$mainMod, tab, workspace, e+1"

        "$mainMod CTRL, h, resizeactive,-50 0"
        "$mainMod CTRL, j, resizeactive,0 50"
        "$mainMod CTRL, k, resizeactive,0 -50"
        "$mainMod CTRL, l, resizeactive,50 0"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
  };
}
