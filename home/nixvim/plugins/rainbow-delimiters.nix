{
  programs.nixvim.plugins = {
    rainbow-delimiters.enable = true;
    indent-blankline.settings.scope = {
      enabled = true;
      highlight = [ ];
    };
  };
}
