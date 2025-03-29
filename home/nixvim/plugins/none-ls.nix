{ pkgs, ... }: {
  programs.nixvim.plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources.formatting = {
      alejandra.enable = true;
      nixpkgs_fmt.enable = true;
      google_java_format.enable = true;
      prettier = {
        enable = true;
        disableTsServerFormatter = true;
      };
      stylua.enable = true;
    };
  };

  home.packages = with pkgs; [
    alejandra
    nixpkgs-fmt
    prettierd
    nixfmt-classic
    stylua
    vimPlugins.luasnip
  ];
}
