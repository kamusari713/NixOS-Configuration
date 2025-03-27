{ pkgs
, lib
, ...
}: {
  programs.nixvim.plugins = {
    # Enable extra cmp sources
    cmp-emoji.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-treesitter.enable = true;

    friendly-snippets.enable = true;
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
      fromVscode = [
        {
          lazyLoad = true;
          paths = "${pkgs.vimPlugins.friendly-snippets}";
        }
      ];
    };

    cmp = {
      enable = true;
      settings = {
        completion = {
          completeopt = "menu,menuone,noinsert";
        };

        autoEnableSources = true;

        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

        experimental.ghost_text = false;

        mapping = {
          "<C-k>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })";
          "<C-j>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })";
          "<C-p>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })";
          "<C-n>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })";
          "<C-h>" = ''
            function()
              if cmp.visible_docs() then
                cmp.close_docs()
              else
                cmp.open_docs()
              end
            end
          '';
          "<C-b>" = "cmp.mapping.scroll_docs(-1)";
          "<C-f>" = "cmp.mapping.scroll_docs(1)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";

          "<Tab>" = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif require("luasnip").expandable() then
                require("luasnip").expand()
              elseif require("luasnip").expand_or_jumpable() then
                require("luasnip").expand_or_jump()
              elseif require("cmp.utils.misc").check_backspace() then
                require("neotab").tabout()
              else
                require("neotab").tabout()
              end
            end
          '';

          "<S-Tab>" = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif require("luasnip").jumpable(-1) then
                require("luasnip").jump(-1)
              else
                fallback()
              end
            end
          '';
        };

        formatting = {
          fields = [ "kind" "abbr" "menu" ];
          expandable_indicator = true;
          format = lib.mkDefault ''
            function(entry, vim_item)
              local icons = require("user.icons")
              vim_item.kind = icons.kind[vim_item.kind] or vim_item.kind
              vim_item.menu = ({
                nvim_lsp = "",
                luasnip = "",
                buffer = "",
                path = "",
                emoji = "",
              })[entry.source.name]
              return vim_item
            end
          '';
        };

        sources = [
          { name = "copilot"; }
          {
            name = "nvim_lsp";
            entry_filter.__raw = ''
              function(entry, ctx)
                local kind = require("cmp.types.lsp").CompletionItemKind[entry:get_kind()]
                if kind == "Snippet" and ctx.prev_context.filetype == "java" then return false end
                if ctx.prev_context.filetype == "markdown" then return true end
                if kind == "Text" then return false end
                return true
              end
            '';
          }
          { name = "luasnip"; }
          { name = "nvim_lua"; }
          { name = "buffer"; }
          { name = "path"; }
          { name = "calc"; }
          { name = "emoji"; }
          { name = "treesitter"; }
          { name = "crates"; }
          { name = "tmux"; }
        ];

        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,FloatBorder:FloatBorder,Search:None";
            col_offset = -3;
            side_padding = 1;
            scrollbar = false;
            scrolloff = 8;
          };
          documentation = {
            border = "rounded";
            winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,Search:None";
          };
        };

        confirm_opts = {
          behavior = "cmp.ConfirmBehavior.Replace";
          select = false;
        };

        view = {
          entries = {
            name = "custom";
            selection_order = "top_down";
          };
          docs = {
            auto_open = false;
          };
        };
      };
    };
  };
  # cmp = {
  #   enable = true;
  #   settings = {
  #     completion = {
  #       completeopt = "menu,menuone,noinsert";
  #     };
  #     autoEnableSources = true;
  #     experimental = { ghost_text = true; };
  #     performance = {
  #       debounce = 60;
  #       fetchingTimeout = 200;
  #       maxViewEntries = 30;
  #     };
  #     formatting = { fields = [ "kind" "abbr" "menu" ]; };
  #     sources = [
  #       {
  #         name = "nvim_lsp";
  #         priority = 100;
  #       }
  #       {
  #         name = "emmet";
  #         priority = 100;
  #       }
  #       { name = "emoji"; }
  #       {
  #         name = "buffer"; # text within current buffer
  #         option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
  #         keywordLength = 3;
  #       }
  #       {
  #         name = "path"; # file system paths
  #         keywordLength = 3;
  #       }
  #       {
  #         name = "luasnip"; # snippets
  #         keywordLength = 3;
  #       }
  #     ];

  #     snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

  #     window = {
  #       completion = { border = "solid"; };
  #       documentation = { border = "solid"; };
  #     };

  #     mapping = {
  #       "<A-Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
  #       "<C-n>" = "cmp.mapping.select_next_item()";
  #       "<C-p>" = "cmp.mapping.select_prev_item()";
  #       "<C-Tab>" = "cmp.mapping.select_prev_item()";
  #       "<C-e>" = "cmp.mapping.abort()";
  #       "<C-b>" = "cmp.mapping.scroll_docs(-4)";
  #       "<C-f>" = "cmp.mapping.scroll_docs(4)";
  #       "<C-Space>" = "cmp.mapping.complete()";
  #       "<Tab>" = "cmp.mapping.confirm({ select = true })";
  #       "<S-Tab>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
  #     };
  #   };
  # };
}
