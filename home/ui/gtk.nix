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

  qt = {
    enable = true;
		platformTheme.name = "gtk";
		style.name = "gtk2";
  };
}
