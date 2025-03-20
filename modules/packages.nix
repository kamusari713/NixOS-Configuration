{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # General
    fd
    fzf
    htop
    unzip
    wget
    yazi
    home-manager
  ];
}
