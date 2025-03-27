{
  imports = [
    ./db

    ./keyd.nix
    ./sound.nix
    ./xserver.nix
    ./zerotier.nix
  ];
  services = {
    openssh.enable = true;
    sshd.enable = true;
    libinput.enable = true;
  };
}
