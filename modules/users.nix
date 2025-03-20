{ pkgs, ... }: {
  users.users.kamusari = {
    isNormalUser = true;
    extraGroups = [ "docker" "audio" "input" "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}
