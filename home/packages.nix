{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    # Social and etc ...
    amnezia-vpn
    vivaldi
    inputs.freesmlauncher.packages.${pkgs.system}.freesmlauncher
    telegram-desktop

    # LibreOffice
    libreoffice-qt
    hunspell
    hunspellDicts.ru_RU

    # Workflow
    jdk21
    maven

    mongosh
    mongodb-tools

    nodejs_23

    # Shit
    jetbrains.idea-community
    pgmodeler
  ];
}
