{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    settings = {
      ensure_installed = [
        "nix"
        "java"
        "javascript"
        "html"
        "css"
        "python"
        "lua"
      ];

      sync_install = true;

      highlight.enable = true;

      indent.enable = true;
    };
  };
}
