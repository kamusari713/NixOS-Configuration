{
  programs.nixvim.keymaps = [
    # Mini Files
    # {
    #   mode = "n";
    #   key = "<leader>e";
    #   action = "<cmd>lua MiniFiles.open()<CR>";
    # }
    # Nvim neo tree
    {
      mode = "n";
      key = "<leader><Tab>";
      action = "<cmd>Neotree<CR>";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle float<CR>";
    }
    # Telescope
    {
      mode = "n";
      key = "<leader>fd";
      action = "<cmd>Telescope live_grep<CR>";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope git_commits<CR>";
    }
    # Lazygit
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
    }
    # Commentary bindings
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>Commentary<CR>";
    }
    # Utility
    {
      mode = "n";
      key = "<leader>o";
      action = "o<Esc>k";
    }
    {
      mode = "n";
      key = "<leader>O";
      action = "O<Esc>j";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "<cmd>w<CR>";
    }
    {
      mode = "n";
      key = "<leader>a";
      action = "ggVG";
    }
    # Bufferline
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>wk";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Delete buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>wo";
      action = "<cmd>BufferLineCloseOthers<cr>";
      options = {
        desc = "Delete other buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>wp";
      action = "<cmd>BufferLineTogglePin<cr>";
      options = {
        desc = "Toggle pin";
      };
    }
    {
      mode = "n";
      key = "<leader>wP";
      action = "<Cmd>BufferLineGroupClose ungrouped<CR>";
      options = {
        desc = "Delete non-pinned buffers";
      };
    }
  ];
}
