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
          filetypes = [ "html" "css" "scss" "javascript" "javascriptreact" "typescript" "typescriptreact" "svelte" "vue" ];
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

        # graphql.enable = true; # GraphQL

        jsonls.enable = true; # JSON

        java_language_server.enable = true;

        kotlin_language_server.enable = true; # Kotlin
      };

      keymaps = {
        silent = true;

        diagnostic = {
          # Navigate in diagnostics
          "<leader>k" = "goto_prev";
          "<leader>j" = "goto_next";
        };

        lspBuf = {
          gd = "definition";
          gD = "references";
          gt = "type_definition";
          gi = "implementation";
          K = "hover";
          "<F2>" = "rename";
        };
      };
    };

    lsp-format = {
      enable = true;
    };

    lsp-status = {
      enable = true;
    };

    # lspkind = {
    #   enable = true;

    #   cmp = {
    #     enable = true;

    #     menu = {
    #       nvim_lsp = "[LSP]";
    #       nvim_lua = "[api]";
    #       path = "[path]";
    #       luasnip = "[snip]";
    #       buffer = "[buffer]";
    #       neorg = "[neorg]";
    #     };
    #   };
    # };
  };
}
