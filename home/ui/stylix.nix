{ inputs
, pkgs
, ...
}: {
  imports = [
    inputs.stylix.homeManagerModules.stylix
  ];

  home.packages = with pkgs; [
    jetbrains-mono
    fira-code
    iosevka
    montserrat
    ubuntu-sans
    nerd-fonts.iosevka
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji

    bibata-cursors
  ];

  stylix = {
    enable = true;
    autoEnable = true;
    polarity = "dark";
    targets = {
      gtk.enable = false;
      waybar.enable = false;
      nixvim.enable = false;
      hyprland.enable = false;
    };
    image = ../../wallpapers/girl-outline.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };
      monospace = {
        name = "JetBrains Mono";
        package = pkgs.jetbrains-mono;
      };
      sansSerif = {
        name = "Noto Sans";
        package = pkgs.noto-fonts;
      };
      serif = {
        name = "Noto Serif";
        package = pkgs.noto-fonts;
      };

      sizes = {
        terminal = 13;
        applications = 11;
      };
    };
  };
}
