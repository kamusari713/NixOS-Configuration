{
  programs.nixvim.autoCmd = [{
    event = [ "FileType" ];

    pattern = [ "nix" "lua" "css" ];

    command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2";
  }];
}
