{
  programs.nixvim.plugins = {
    lsp = {
      enable = true;
      servers = {
        nil_ls.enable = true; # Nix
        ts_ls = {
          enable = true; # TS
          filetypes = [ "typescript" "typescriptreact" "typescript.tsx" ];
        };
        cssls.enable = true; # CSS
        tailwindcss.enable = true; # TailwindCSS
        html.enable = true; # HTML
        emmet_ls = {
          enable = true;
          filetypes = [
            "html"
            "css"
            "scss"
            "javascript"
            "javascriptreact"
            "typescript"
            "typescriptreact"
            "vue"
          ];
        };
        volar = {
          enable = true; # Vue
          # volar formatter indent is broken, so we disable it in favor of prettier
          onAttach.function = ''
             on_attach = function(client)
            client.server_capabilities.document_formatting = false
            client.server_capabilities.document_range_formatting = false
             end
          '';
          onAttach.override = true;
        };
        dockerls.enable = true; # Docker
        bashls.enable = true; # Bash
        pyright.enable = true; # Python
        marksman.enable = true; # Markdown
        gopls.enable = true; # Go
        jsonls.enable = true; # JSON
        # java_language_server.enable = true; # Java
        # kotlin_language_server.enable = true; # Kotlin
      };
      keymaps = {
        silent = true;
        diagnostic = {
          # Navigate in diagnostics
          "<leader>k" = "goto_prev";
          "<leader>j" = "goto_next";
        };
        lspBuf = {
          lr = "references";
          li = "implementation";
        };
      };
    };
    lspsaga.enable = true;
    lsp-format.enable = true;
    lsp-status.enable = true;
    lspkind = {
      enable = true;
      cmp.menu = {
        nvim_lsp = "";
        nvim_lua = "";
        neorg = "[neorg]";
        buffer = "";
        calc = "";
        git = "";
        luasnip = "󰩫";
        copilot = "";
        emoji = "󰞅";
        path = "";
        spell = "";
      };
      symbolMap = {
        Namespace = "󰌗";
        Text = "󰊄";
        Method = "󰆧";
        Function = "󰡱";
        Constructor = "";
        Field = "󰜢";
        Variable = "󰀫";
        Class = "󰠱";
        Interface = "";
        Module = "󰕳";
        Property = "";
        Unit = "󰑭";
        Value = "󰎠";
        Enum = "";
        Keyword = "󰌋";
        Snippet = "";
        Color = "󰏘";
        File = "󰈚";
        Reference = "󰈇";
        Folder = "󰉋";
        EnumMember = "";
        Constant = "󰏿";
        Struct = "󰙅";
        Event = "";
        Operator = "󰆕";
        TypeParameter = "";
        Table = "";
        Object = "󰅩";
        Tag = "";
        Array = "[]";
        Boolean = "";
        Number = "";
        Null = "󰟢";
        String = "󰉿";
        Calendar = "";
        Watch = "󰥔";
        Package = "";
      };
      extraOptions = {
        maxwidth = 50;
        ellipsis_char = "...";
      };
    };
  };
}
