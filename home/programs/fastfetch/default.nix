{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "kitty-direct";
        source = "~/.wallpapers/trollface.png";
        width = 40;
        height = 16;
      };
      display = {
        separator = " ➜  ";
      };
      modules = [
        {
          type = "break";
        }
        {
          type = "os";
          key = "OS   ";
          keyColor = "white";
        }
        {
          type = "kernel";
          key = " ├  ";
          keyColor = "white";
        }
        {
          type = "packages";
          format = "{} (nixpkgs)";
          key = " ├ 󰏖 ";
          keyColor = "white";
        }
        {
          type = "shell";
          key = " └  ";
          keyColor = "white";
        }
        {
          type = "break";
        }
        {
          type = "wm";
          key = "WM   ";
          keyColor = "blue";
        }
        {
          type = "wmtheme";
          key = " ├ 󰉼 ";
          keyColor = "blue";
        }
        {
          type = "icons";
          key = " ├ 󰀻 ";
          keyColor = "blue";
        }
        {
          type = "cursor";
          key = " ├  ";
          keyColor = "blue";
        }
        {
          type = "terminal";
          key = " ├  ";
          keyColor = "blue";
        }
        {
          type = "terminalfont";
          key = " └  ";
          keyColor = "blue";
        }
        {
          type = "break";
        }
        {
          type = "board";
          key = "PC   ";
          keyColor = "red";
        }
        {
          type = "cpu";
          format = "{1} ({3}) @ {7} GHz";
          key = " ├  ";
          keyColor = "red";
        }
        {
          type = "gpu";
          format = "{1} {2} @ {12} GHz";
          key = " ├ 󰢮 ";
          keyColor = "red";
        }
        {
          type = "memory";
          key = " ├  ";
          keyColor = "red";
        }
        {
          type = "swap";
          key = " ├ 󰓡 ";
          keyColor = "red";
        }
        {
          type = "disk";
          key = " ├ 󰋊 ";
          keyColor = "red";
        }
        {
          type = "monitor";
          key = " └  ";
          keyColor = "red";
        }
        {
          type = "break";
        }
        {
          type = "colors";
          paddingLeft = 4;
        }
        {
          type = "break";
        }
        {
          type = "break";
        }
      ];
    };
  };
}
