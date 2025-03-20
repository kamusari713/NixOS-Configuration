{
  programs.nixvim.plugins.neo-tree = {
    enable = true;

    closeIfLastWindow = true;
    popupBorderStyle = "single";
    enableGitStatus = true;
    enableModifiedMarkers = true;
    enableDiagnostics = true;
    sortCaseInsensitive = true;

    window = {
      position = "float";
      width = 30;
    };

    defaultComponentConfigs = {
      indent = {
        withMarkers = true;
        withExpanders = true;
      };

      modified = {
        symbol = " ";
        highlight = "NeoTreeModified";
      };

      icon = {
        folderClosed = "";
        folderOpen = "";
        folderEmpty = "";
        folderEmptyOpen = "";
      };

      gitStatus.symbols = {
        added = "";
        deleted = "";
        modified = "";
        renamed = "";
        untracked = "";
        ignored = "";
        unstaged = "";
        staged = "";
        conflict = "";
      };
    };

    sourceSelector = {
      winbar = true;
      sources = [
        {
          source = "filesystem";
          displayName = "   Files ";
        }
        {
          source = "buffers";
          displayName = "   Bufs ";
        }
        {
          source = "git_status";
          displayName = "   Git ";
        }
      ];
    };

    filesystem = {
      groupEmptyDirs = true;
      useLibuvFileWatcher = true;

      filteredItems = {
        hideDotfiles = false;
        hideGitignored = false;
        visible = true;
        hideByName = [ "node_modules" ];
        neverShow = [ ".DS_Store" "thumbs.db" ];
      };
    };
  };
}
