{ inputs, ... }: {
  imports = [
    inputs.nixcord.homeManagerModules.nixcord

    ./plugins.nix
    ./quickCss.nix
  ];

  programs.nixcord = {
    enable = true;
    discord.enable = false;
    vesktop.enable = true;

    config = {
      useQuickCss = true;
      frameless = true;
    };
  };
}
