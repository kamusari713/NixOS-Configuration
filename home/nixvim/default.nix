{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./plugins
    ./settings
  ];

  programs.nixvim.enable = true;
}
