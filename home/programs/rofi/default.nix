{ config, ... }: {
  programs.rofi = {
    enable = true;
    cycle = false;
    terminal = "kitty";

    extraConfig = {
      modi = "drun";
      lines = 5;
      show-icons = true;
      drun-display-format = "{icon} {name}";
      disable-history = true;
      hide-scrollbar = true;
      display-drun = " Apps ";
      display-Network = " Network";
      sorting-method = "fzf";
    };
    theme = let inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "window" = {
        height = 600;
        width = 600;

        border = 1;
        border-radius = 10;
      };

      "mainbox" = {
        spacing = 0;
        children = map mkLiteral [ "inputbar" "message" "listview" ];
      };

      "inputbar" = { padding = 14; };

      "message" = { padding = 10; };

      "listview" = {
        padding = 8;
        border-radius = mkLiteral "0 0 10 10";
        border = mkLiteral "2 2 2 2";
        dynamic = false;
      };

      "textbox" = { };

      "error-message" = { border = mkLiteral "20 20 20 20"; };

      "prompt" = { margin = mkLiteral "0 10 0 0"; };

      "element" = {
        padding = 5;
        vertical-align = mkLiteral "0.5";
        border-radius = 10;
      };

      "element-text" = {
        size = 40;
        margin = mkLiteral "0 10 0 0";
        vertical-align = mkLiteral "0.5";
      };

      "element-icon" = {
        size = 40;
        margin = mkLiteral "0 10 0 0";
        vertical-align = mkLiteral "0.5";
      };
    };
  };
}
