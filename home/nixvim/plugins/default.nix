{
  imports = [
    ./cmp.nix
    ./colorizer.nix
    ./conform-nvim.nix
    ./emmet.nix
    ./extraPlugins.nix
    ./fidget.nix
    ./indent-blankline.nix
    ./lsp.nix
    ./lualine.nix
    ./mini.nix
    ./neo-tree.nix
    ./none-ls.nix
    ./telescope.nix
    ./treesitter.nix
    ./ts-autotag.nix
    ./typescript-tools.nix
    ./visual-multi.nix
  ];

  programs.nixvim = {
    plugins = {
      commentary.enable = true;

      nvim-autopairs.enable = true;

      noice.enable = true;

      noice.settings.presets."inc_rename" = true;

      inc-rename.enable = true;

      java.enable = true;

      vim-surround.enable = true;

      tailwind-tools.enable = true;

      transparent.enable = true;

      vim-be-good.enable = true;

      wakatime.enable = true;

      web-devicons.enable = true;
    };
  };
}
