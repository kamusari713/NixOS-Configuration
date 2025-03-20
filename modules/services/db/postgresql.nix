{ pkgs, ... }: {
  services.postgresql = {
    enable = true;
    enableTCPIP = true;
    package = pkgs.postgresql_16;
    authentication = pkgs.lib.mkOverride 10 ''
      local all all trust
      host all all 127.0.0.1/32 trust
      host all all ::1/128 trust
      host all all 10.89.0.0/16 trust
    '';
    initialScript = pkgs.writeText "backend-initScript" ''
      CREATE USER postgres WITH ENCRYPTED PASSWORD 'postgres';
      CREATE DATABASE postgres;
      ALTER DATABASE postgres OWNER to postgres;
    '';
  };
}
