{
  programs.nixvim.plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
			live-grep-args.enable = true;
    };
    settings = {
      pickers = {
        find_files = {
          hiden_files = true;
        };
      };
    };
  };
}
