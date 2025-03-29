{ pkgs, ... }: {
  home.packages = with pkgs; [ lazygit ];

  programs.git = {
    enable = true;
    userName = "kamusari713";
    userEmail = "ovsyannikovkostyan@gmail.com";
    aliases = {
      # Core commands
      aa = "add --all";
      st = "status";
      l = "log";
      graph = "log --all --decorate --graph --oneline";
      br = "branch";
      co = "checkout";
      # Commit-related commands
      ci = "commit -v";
      c = "commit -m";
      ca = "commit -am";
      fuck = "commit --amend -v";
      pidor = "commit --amend --no-edit";
      unci = "reset --soft HEAD~1";
      # Remote repository actions
      essa = "push --force";
      ps = "!git push origin $(git rev-parse --abbrev-ref HEAD)";
      pl = "!git pull origin $(git rev-parse --abbrev-ref HEAD)";
      # Rebase, diffs, and fixing mistakes
      r = "rebase";
      d = "diff";
      df = "!git hist | fzf | awk '{print $2}' | xargs -I {} git diff {}^ {}";
      oops = "checkout --";
      edit-unmerged =
        "!f() { git ls-files --unmerged | cut -f2 | sort -u ; }; hx `f`";
      # History and navigation
      hist =
        "log --pretty=format:'%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)' --graph --date=relative --decorate --all";
      llog =
        "log --graph --name-status --pretty=format:'%C(red)%h %C(reset)(%cd) %C(green)%an %Creset%s %C(yellow)%d%Creset' --date=relative";
      # Utility and cleanup
      last = "log -1 HEAD";
      unadd = "reset HEAD";
      unstage = "reset HEAD --";
      wip = "commit -am 'WIP'";
      prune = "remote prune origin";
      clean = "clean -df";
      lsfiles = "ls-files";
    };

    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
    };
  };
}
