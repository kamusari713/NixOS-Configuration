{
  services.redis = {
    servers = {
      kaidan-redis-dev = {
        enable = true;
        port = 6379;
      };
    };
  };
}
