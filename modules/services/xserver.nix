{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us,ru";
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
