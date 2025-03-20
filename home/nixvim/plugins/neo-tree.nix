{
  programs.nixvim.plugins.neo-tree = {
    enable = true;

    window = {
      position = "right";
      width = 30;
      autoExpandWidth = true;
    };

    filesystem = {
      groupEmptyDirs = true;

      filteredItems = {
        hideDotfiles = false;
        hideGitignored = false;
        visible = true;
      };
    };
  };
}
