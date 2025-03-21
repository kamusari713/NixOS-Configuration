{ lib, ... }: {
  programs.kitty = {
    enable = true;

    settings = {
      background_opacity = lib.mkForce 0.6;
      confirm_os_window_close = 0;
    };
  };
}
