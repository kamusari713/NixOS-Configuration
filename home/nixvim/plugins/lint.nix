{
  programs.nixvim.plugins.lint = {
    enable = true;
    lintersByFt = {
      rust = [ "clippy" ];
      java = [ "checkstyle" ];
      nix = [ "deadnix" ];
      css = [ "stylelint" ];
    };
    linters = { checkstyle = { config_file = "/google_checks.xml"; }; };
  };
}
