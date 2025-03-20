{ config
, pkgs
, ...
}: {
  home.packages = with pkgs; [ mako ];

  xdg.configFile."mako/config".text = ''
    background-color=#${config.lib.stylix.colors.base00}
    border-color=#${config.lib.stylix.colors.base0A}
    text-color=#${config.lib.stylix.colors.base0A}
    font=${config.stylix.fonts.serif.name}
  '';
}
