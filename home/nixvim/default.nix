{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./plugins

    ./common.nix
    ./keymaps.nix
  ];
}
