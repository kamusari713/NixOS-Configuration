{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "h";
      action = "h";
    }
    {
      mode = "n";
      key = "l";
      action = "l";
    }
    # Vim Surround
    {
      mode = "v";
      key = "<leader>w";
      action = "St";
      options = {
        desc = "Wrap area";
        silent = true;
      };
    }

    # LspSaga
    {
      mode = "n";
      key = "<leader>la";
      options.desc = "Lsp Code Actions";
      action = "<cmd>Lspsaga code_action<CR>";
    }
    {
      mode = "n";
      key = "<leader>lf";
      options.desc = "Lsp Find";
      action = "<cmd>Lspsaga finder<CR>";
    }
    {
      mode = "n";
      key = "<leader>lh";
      options.desc = "Lsp Hover";
      action = "<cmd>Lspsaga hover_doc<CR>";
    }
    {
      mode = "n";
      key = "<leader>lr";
      options.desc = "Lsp Rename";
      action = "<cmd>Lspsaga rename<CR>";
    }
    {
      mode = "n";
      key = "<leader>lp";
      options.desc = "Lsp Show Definition";
      action = "<cmd>Lspsaga peek_definition<CR>";
    }
    {
      mode = "n";
      key = "<leader>ld";
      options.desc = "Lsp Goto Definition";
      action = "<cmd>Lspsaga goto_definition<CR>";
    }
    {
      mode = "n";
      key = "<leader>lb";
      action = "<cmd>lua vim.lsp.buf.references<CR>";
    }

    # Nvim neo tree
    {
      mode = "n";
      key = "<leader>ef";
      action = "<cmd>Neotree toggle float<CR>";
      options.desc = "Open Nvim-Neo-Tree";
    }
    {
      mode = "n";
      key = "<leader>er";
      action = "<cmd>Neotree toggle position=right<CR>";
      options.desc = "Open Nvim-Neo-Tree";
    }

    # Telescope
    {
      mode = "n";
      key = "<leader>fd";
      action = "<cmd>Telescope live_grep<CR>";
      options.desc = "Live grep files";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "Find files";
    }
    {
      mode = "n";
      key = "<leader>fo";
      action = "<cmd>Telescope buffers<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>Telescope oldfiles<CR>";
      options.desc = "Open Recent File";
    }

    # Telescope Git
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope git_commits<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>Telescope git_branches<CR>";
      options.desc = "Git branches";
    }
    {
      mode = "n";
      key = "<leader>gss";
      action = "<cmd>Telescope git_status<CR>";
      options.desc = "Git status";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Telescope git_stash<CR>";
      options.desc = "Git stash";
    }

    # Utility
    {
      mode = "n";
      key = "<esc>";
      action = ":noh<CR>";
      options = {
        silent = true;
        desc = "Clear search";
      };
    }
    {
      mode = "n";
      key = "<M-h>";
      action = "<C-w>h";
      options.desc = "Moving between windows";
    }
    {
      mode = "n";
      key = "<M-j>";
      action = "<C-w>j";
      options.desc = "Moving between windows";
    }
    {
      mode = "n";
      key = "<M-k>";
      action = "<C-w>k";
      options.desc = "Moving between windows";
    }
    {
      mode = "n";
      key = "<M-l>";
      action = "<C-w>l";
      options.desc = "Moving between windows";
    }
    {
      mode = "n";
      key = "<leader>o";
      action = "o<Esc>k";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>O";
      action = "O<Esc>j";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "<cmd>w<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>A";
      action = "ggVG";
      options.desc = "Buffers";
    }

    # Better navigation
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options.desc = "Set cursor in center";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options.desc = "Set cursor in center";
    }
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options.desc = "Move lines in Visual mode";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options.desc = "Move lines in Visual mode";
    }
    {
      mode = "n";
      key = "n";
      action = "nzz";
      options.desc = "Set cursor in the center";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzz";
      options.desc = "Set cursor in the center";
    }
    {
      mode = "n";
      key = "*";
      action = "*zz";
      options.desc = "Set cursor in the center";
    }
    {
      mode = "n";
      key = "#";
      action = "#zz";
      options.desc = "Set cursor in the center";
    }
    {
      mode = "n";
      key = "g*";
      action = "g*zz";
      options.desc = "Set cursor in the center";
    }
    {
      mode = "n";
      key = "g#";
      action = "g#zz";
      options.desc = "Set cursor in the center";
    }
    {
      mode = "v";
      key = "<";
      action = "<g";
      options.desc = "Moving line in Visual mode";
    }
    {
      mode = "v";
      key = ">";
      action = ">g";
      options.desc = "Moving line in Visual mode";
    }
    {
      mode = "v";
      key = "p";
      action = ''"_dp'';
      options.desc = "Paste without saving in Visual mod";
    }
    {
      mode = "v";
      key = "P";
      action = ''"_dP'';
      options.desc = "Paste without saving in Visual mode";
    }
    {
      mode = [ "n" "x" "o" ];
      key = "H";
      action = "^";
      options.desc = "Go to start of the line";
    }
    {
      mode = [ "n" "x" "o" ];
      key = "L";
      action = "g_";
      options.desc = "Go to end of the line";
    }
  ];
}
