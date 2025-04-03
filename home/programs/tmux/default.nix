{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    extraConfig = builtins.readFile ./tmux.conf;

    baseIndex = 1;
    clock24 = true;

    plugins = with pkgs.tmuxPlugins; [ gruvbox yank ];
  };
}
