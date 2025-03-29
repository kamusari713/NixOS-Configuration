{
  programs.nixvim.plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      live-grep-args.enable = true;
    };
    settings = {
      pickers = { find_files = { hiden_files = true; }; };
      defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        borderchars = {
          prompt = [ "═" "║" "═" "║" "╔" "╗" "╝" "╚" ];
          results = [ "═" "║" "═" "║" "╔" "╗" "╝" "╚" ];
          preview = [ "═" "║" "═" "║" "╔" "╗" "╝" "╚" ];
        };
      };
    };
  };
}
