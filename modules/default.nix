{
  imports = [
    ./desktop
    # ./laptop

    ./services
    ./systemd

    ./boot.nix
    ./hardware.nix
    ./home-manager.nix
    ./networking.nix
    ./packages.nix
    ./programs.nix
    ./settings.nix
    ./users.nix
    ./xdg.nix
  ];

  system.stateVersion = "24.11";
}
