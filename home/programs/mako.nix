{ pkgs, ... }: {
  home.packages = with pkgs; [ mako ];

  xdg.configFile."mako/config".text = ''
    background-color=#282828
    border-color=#d5c4a1
    text-color=#d5c4a1
    font=JetBrainsMono Nerd
  '';
}
