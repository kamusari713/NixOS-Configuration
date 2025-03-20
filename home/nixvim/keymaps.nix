{
  programs.nixvim.keymaps = [
    # Nvim neo tree
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle float<CR>";
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
      action = "<cmd>lua require('telescope.builtin').git_branches()<CR>";
      options.desc = "Git branches";
    }
    {
      mode = "n";
      key = "<leader>gss";
      action = "<cmd>lua require('telescope.builtin').git_status()<CR>";
      options.desc = "Git status";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>lua require('telescope.builtin').git_stash()<CR>";
      options.desc = "Git stash";
    }

    # Utility
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
      key = "<leader>a";
      action = "ggVG";
      options.desc = "Buffers";
    }
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
      action = "Nzzv";
      options.desc = "Set cursor in the center";
    }
    {
      mode = "n";
      key = "*";
      action = "*zzv";
      options.desc = "Set cursor in the center";
    }
    {
      mode = "n";
      key = "#";
      action = "#zzv";
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
      action = "<gv";
      options.desc = "Moving line in Visual mode";
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
      options.desc = "Moving line in Visual mode";
    }
    {
      mode = "v";
      key = "p";
      action = "\"_dp";
      options.desc = "Paste without saving in Visual mod";
    }
    {
      mode = "v";
      key = "P";
      action = "\"_dP";
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
