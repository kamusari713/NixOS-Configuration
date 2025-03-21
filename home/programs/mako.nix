{ config
, pkgs
, ...
}: {
  home.packages = with pkgs; [ mako ];

  xdg.configFile."mako/config".text = ''
    background-color=#${config.lib.stylix.colors.base01}
    border-color=#${config.lib.stylix.colors.base07}
    text-color=#${config.lib.stylix.colors.base07}
    font=${config.stylix.fonts.monospace.name}
  '';
}
