{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [ xdg-utils ];
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    config = {
      common.default = [ "gtk" ];
      hyprland.default = [ "gtk" "hyprland" "wlr" ];
    };
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
}
