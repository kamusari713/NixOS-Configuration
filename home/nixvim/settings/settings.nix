{
  programs.nixvim = {
    defaultEditor = true;
    luaLoader.enable = true;
    globals = {
      mapleader = " ";
    };
    opts = {
      # Tabs
      tabstop = 4;
      shiftwidth = 4;
      softtabstop = 4;
      autoindent = true;
      # Line numbers
      number = true;
      relativenumber = true;
    };
  };
  programs.zsh.shellAliases = {
    nv = "nvim";
  };
}
