{ pkgs, ... }: {
  imports = [
    ./cmp.nix
    ./colorizer.nix
    ./conform-nvim.nix
    ./emmet.nix
    ./fidget.nix
    ./indent-blankline.nix
    ./lint.nix
    ./lsp.nix
    ./lualine.nix
    ./mini.nix
    ./neo-ls.nix
    ./neo-tree.nix
    ./telescope.nix
    ./treesitter.nix
    ./ts-autotag.nix
    ./visual-multi.nix
  ];

  programs.nixvim.plugins = {
    commentary.enable = true;

    java.enable = true;

    nvim-autopairs.enable = true;

    tailwind-tools.enable = true;

    transparent.enable = true;

    vim-be-good.enable = true;

    wakatime.enable = true;

    web-devicons.enable = true;
  };
}
