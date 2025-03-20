{ pkgs, ... }: {
  programs.waybar = {
    enable = true;

    style = pkgs.lib.readFile ./style.css;
    systemd.enable = true;
    settings = [
      {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "hyprland/window"
        ];
        modules-right = [
          # "network"
          # "battery"
          "custom/weather"
          "pulseaudio"
          "hyprland/language"
          "clock"
          "tray"
        ];

        "hyprland/workspaces" = {
          "on-click" = "activate";
          format = "{id}";
          "all-outputs" = true;
          "disable-scroll" = false;
          "active-only" = false;
        };

        "hyprland/window" = {
          format = "{title}";
        };

        "hyprland/language" = {
          format-en = "en 💩";
          format-ru = "RU 🦾";
          min-length = 5;
          tooltip = false;
        };

        "custom/weather" = {
          format = " {} ";
          exec = "curl -s 'wttr.in/Астрахань?format=%c%t'";
          interval = 300;
          class = "weather";
        };

        battery = {
          interval = 2;
          states = {
            warning = 25;
            critical = 15;
          };
          format = "{icon}{capacity: >3}%";
          "format-charging" = " {capacity}%";
          "format-plugged" = " {capacity}%";
          "format-full" = " {icon}{capacity}%";
          "format-icons" = [
            ""
            ""
            ""
            ""
            ""
          ];
        };

        network = {
          "format-wifi" = "{essid}";
          "format-ethernet" = "{ifname}: {ipaddr}/{cidr}";
          "format-linked" = "{ifname} (No IP)";
          "format-disconnected" = "Disconnected";
          "format-alt" = "{ifname}: {ipaddr}/{cidr}";
        };

        pulseaudio = {
          format = "{icon}  {volume}%";
          "format-muted" = " Muted";
          "format-icons" = {
            headphone = "";
            "hands-free" = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              ""
            ];
          };
          "on-click" = "pavucontrol";
        };

        tray = {
          "show-passive-items" = true;
          spacing = 10;
        };

        clock = {
          format = "{:%d.%m.%Y - %H:%M}";
          format-alt = "{:%A, %B %d at %R}";
        };
      }
    ];
  };
}
