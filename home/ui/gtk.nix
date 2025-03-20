{ pkgs, ... }: {
  gtk = {
    enable = true;
    iconTheme = {
      name = "Gruvbox-dark";
      package = pkgs.gruvbox-dark-icons-gtk;
    };
    theme = {
      name = "Gruvbox-dark";
      package = pkgs.gruvbox-dark-gtk;
    };
  };
}
