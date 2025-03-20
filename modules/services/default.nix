{
  imports = [
    ./db

    ./keyd.nix
    ./sound.nix
    ./xserver.nix
  ];
  services = {
    openssh.enable = true;
    sshd.enable = true;
    libinput.enable = true;
  };
}
