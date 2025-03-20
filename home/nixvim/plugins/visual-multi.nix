{
  programs.nixvim.plugins = {
    visual-multi = {
      enable = true;

      settings = {
        maps = {
          "Find under" = "<C-n>";
        };
      };
    };
  };
}
