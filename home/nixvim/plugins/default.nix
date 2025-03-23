{
  imports = [
    ./cmp.nix
    ./colorizer.nix
		./fidget.nix
		./indent-blankline.nix
    ./lsp.nix
    ./lualine.nix
		./luasnip.nix
    ./mini.nix
    ./neo-ls.nix
    ./neo-tree.nix
		./rainbow-delimiters.nix
    ./telescope.nix
    ./treesitter.nix
    ./ts-autotag.nix
    ./visual-multi.nix
  ];

  programs.nixvim.plugins = {
    commentary.enable = true;

    nvim-autopairs.enable = true;

    tailwind-tools.enable = true;

    transparent.enable = true;

    vim-be-good.enable = true;

    wakatime.enable = true;

    web-devicons.enable = true;
  };
}
