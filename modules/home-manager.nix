{ inputs, ... }: {
  home-manager = {
    users.kamusari = import ../home;
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "hm-backup";
    extraSpecialArgs = { inherit inputs; };
  };
}
