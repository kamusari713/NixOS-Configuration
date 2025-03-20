{
  programs.nixcord.config.plugins = {
    alwaysAnimate.enable = true;

    alwaysExpandRoles.enable = true;

    betterSessions = {
      enable = true;
      backgroundCheck = true;
      checkInterval = 20;
    };

    biggerStreamPreview.enable = true;

    fakeNitro.enable = true;

    gameActivityToggle.enable = true;

    memberCount.enable = true;

    noF1.enable = true;

    noPendingCount.enable = true;

    noReplyMention.enable = true;

    notificationVolume = {
      enable = true;
      notificationVolume = 0.0;
    };

    nsfwGateBypass.enable = true;

    permissionsViewer.enable = true;

    showHiddenChannels.enable = true;

    showHiddenThings.enable = true;

    silentMessageToggle.enable = true;

    webScreenShareFixes.enable = true;
  };
}
