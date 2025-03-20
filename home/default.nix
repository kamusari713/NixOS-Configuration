{
  imports = [
    ./nixcord
    ./nixvim
    ./programs
    ./ui

    ./packages.nix
  ];

  home = {
    username = "kamusari";
    homeDirectory = "/home/kamusari";
    enableNixpkgsReleaseCheck = false;
    stateVersion = "24.11";
  };
}
