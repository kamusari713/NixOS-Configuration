{
  imports = [ ./amnezia.nix ];

  systemd.services = {
    "getty@tty1".enable = false;
    "autovt@tty1".enable = false;
  };
}
