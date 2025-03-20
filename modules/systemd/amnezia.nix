{ pkgs, ... }: {
  systemd = {
    services.amnezia-vpn = {
      description = "Amnezia VPN Service";
      after = [ "network-online.target" ];
      wants = [ "network-online.target" ];
      wantedBy = [ "multi-user.target" ];

      serviceConfig = {
        ExecStart = "${pkgs.amnezia-vpn}/bin/AmneziaVPN-service";
        Restart = "always";
        Environment = "PATH=/run/current-system/sw/bin";
      };
    };
  };
}
