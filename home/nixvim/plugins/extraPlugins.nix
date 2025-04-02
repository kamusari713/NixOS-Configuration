{ pkgs, ... }: {
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [ winshift-nvim ];

    extraConfigLuaPre = ''
      require("winshift").setup({
      	highlight_moving_win = true,  -- Highlight the window being moved
      	focused_hl_group = "Visual",  -- The highlight group used for the moving window
      	moving_win_options = {
      		wrap = true,
      		cursorline = false,
      		cursorcolumn = false,
      		colorcolumn = "",
      	},
      	keymaps = {
      		disable_defaults = false, -- Disable the default keymaps
      	},
      })

      vim.keymap.set('n', '<C-W>m', '<Cmd>WinShift<CR>')
    '';
  };
}
