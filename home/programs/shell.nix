let flakeDir = "~/nixos-config";
in {
  programs = {
    bash = { enable = true; };

    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      enableCompletion = true;
      history = { size = 1000; };

      oh-my-zsh = {
        enable = true;
        theme = "gnzh";
        plugins = [ "git" ];
      };

      shellAliases = {
        rb = "sudo nixos-rebuild switch --flake ${flakeDir}#desktop";
        rbl = "sudo nixos-rebuild switch --flake ${flakeDir}#laptop";
        upd = "nix flake update ${flakeDir}";
        upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
        hms = "home-manager switch --flake ${flakeDir}";
        ngc = "sudo nix-collect-garbage -d";

        cls = "clear";
        ls = "ls -lh";

        g = "git";
        t = "tmux";
        a = "attach";
      };

      initExtra = ''
        fastfetch --logo ~/.wallpapers/trollface.png
      '';
    };
  };
}
