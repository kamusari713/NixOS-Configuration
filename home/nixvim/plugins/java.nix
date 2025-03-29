{ pkgs
, lib
, ...
}: {
  programs.nixvim.plugins = {
    lsp = {
      servers =
        let
          start-jdt-server = lib.getExe (pkgs.writeShellScriptBin "start-jdt-server" "jdtls -data ./.jdt-data");
        in
        {
          java_language_server = {
            enable = true;
            cmd = [ "${start-jdt-server}" ];
            package = pkgs.jdt-language-server;
          };
        };
    };

    nvim-jdtls = {
      enable = true;
      data = "./.jdt-data";
      settings.java = {
        gradle.enabled = true;
        maven.enabled = true;
      };
    };
  };
}
