{
  services = {
    xserver = {
      enable = true;

      xkb.layout = "us,ru";
      videoDrivers = [ "nvidia" ];

      displayManager.gdm.enable = true;
    };

    displayManager = {
      autoLogin = {
        enable = true;
        user = "kamusari";
      };
    };
  };
}
