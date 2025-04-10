{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        java = [ "google-java-format" ];
        javascript = [ "prettierd" ];
        typescript = [ "prettierd" ];
        nix = [ "nixfmt" ];
        markdown = [ "markdownfmt" ];
        css = [ "stylelint" ];
        "_" = [ "squeeze_blanks" "trim_whitespace" "trim_newlines" ];
      };
      default_format_opts = { lsp_format = "fallback"; };
      notify_no_formatters = true;
      format_on_save = { timeout_ms = 1000; };
    };
  };
}
