{
  programs.nixvim.plugins = {
    cmp = {
      enable = true;
      settings = {
        completion = {
          completeopt = "menu,menuone,noinsert";
        };
        autoEnableSources = true;
        experimental = { ghost_text = true; };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        formatting = { fields = [ "kind" "abbr" "menu" ]; };
        sources = [
          {
            name = "nvim_lsp";
            priority = 100;
          }
          {
            name = "emmet";
            priority = 100;
          }
          { name = "emoji"; }
          {
            name = "buffer"; # text within current buffer
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
          # { name = "copilot"; } # enable/disable copilot
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }
          {
            name = "luasnip"; # snippets
            keywordLength = 3;
          }
        ];

        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

        window = {
          completion = { border = "solid"; };
          documentation = { border = "solid"; };
        };

        mapping = {
          "<A-Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-Tab>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<Tab>" = "cmp.mapping.confirm({ select = true })";
          "<S-Tab>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };

    cmp-emoji = {
      enable = true;
    };

    cmp-nvim-lsp = {
      enable = true; # LSP
    };
    cmp-buffer = {
      enable = true;
    };
    cmp-path = {
      enable = true; # file system paths
    };
    cmp_luasnip = {
      enable = true; # snippets
    };
    cmp-cmdline = {
      enable = true; # autocomplete for cmdline
    };
  };
  # # cmp-nvim-lsp.enable = true;
  # # cmp-emoji.enable = true;
  # # cmp-buffer.enable = true;
  # # cmp-path.enable = true;
  # # cmp_luasnip.enable = true;
  # # cmp-cmdline.enable = true;
  # friendly-snippets.enable = true;

  # cmp = {
  #   enable = true;
  #   autoEnableSources = true;
  #   cmdline = {
  #     "/" = {
  #       mapping.__raw = "cmp.mapping.preset.cmdline()";
  #       sources = [{ name = "buffer"; }];
  #     };
  #     ":" = {
  #       mapping.__raw = "cmp.mapping.preset.cmdline()";
  #       sources = [
  #         { name = "path"; }
  #         {
  #           name = "cmdline";
  #           option.ignore_cmds = [
  #             "Man"
  #             "!"
  #           ];
  #         }
  #       ];
  #     };
  #   };

  #   filetype = {
  #     sql.sources = [
  #       { name = "buffer"; }
  #       { name = "vim-dadbod-completion"; }
  #     ];
  #   };

  #   settings = {
  #     completion.completeopt = "menu,menuone,noinsert";
  #     sources = [
  #       {
  #         name = "nvim_lsp";
  #         priority = 100;
  #       }
  #       {
  #         name = "emmet";
  #         priority = 100;
  #       }
  #       # {
  #       #   name = "nvim_lsp_signature_help";
  #       #   priority = 100;
  #       # }
  #       # {
  #       #   name = "nvim_lsp_document_symbol";
  #       #   priority = 100;
  #       # }
  #       {
  #         name = "treesitter";
  #         priority = 80;
  #       }
  #       {
  #         name = "luasnip";
  #         priority = 70;
  #       }
  #       # {
  #       #   name = "codeium";
  #       #   priority = 60;
  #       # }
  #       {
  #         name = "buffer";
  #         priority = 50;
  #         option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
  #         keywordLength = 3;
  #       }
  #       {
  #         name = "path";
  #         priority = 30;
  #       }
  #       {
  #         name = "git";
  #         priority = 20;
  #       }
  #       {
  #         name = "npm";
  #         priority = 20;
  #       }
  #       {
  #         name = "zsh";
  #         priority = 20;
  #       }
  #       {
  #         name = "calc";
  #         priority = 10;
  #       }
  #       {
  #         name = "emoji";
  #         priority = 5;
  #       }
  #     ];

  #     experimental.ghost_text = true;

  #     mapping = {
  #       "<C-n>" =
  #         # lua
  #         "cmp.mapping(cmp.mapping.select_next_item())";
  #       "<C-p>" =
  #         # lua
  #         "cmp.mapping(cmp.mapping.select_prev_item())";
  #       "<C-e>" =
  #         # lua
  #         "cmp.mapping.abort()";
  #       "<C-d>" =
  #         # lua
  #         "cmp.mapping.scroll_docs(-4)";
  #       "<C-f>" =
  #         # lua
  #         "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
  #       "<S-Tab>" =
  #         # lua
  #         "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
  #       "<Tab>" =
  #         # lua
  #         "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })";
  #       "<C-Tab>" =
  #         # lua
  #         "cmp.mapping.complete()";
  #     };

  #     snippet.expand =
  #       # lua
  #       ''
  #         function(args)
  #           require('luasnip').lsp_expand(args.body)
  #         end
  #       '';
  #   };
  # };
  # };
}
