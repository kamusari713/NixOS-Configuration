{
  wayland.windowManager.hyprland.settings.env = [
    "XDG_DOWNLOAD_DIR,$HOME/Downloads"
    "XDG_DOCUMENTS_DIR,$HOME/Documents"
    "XDG_PICTURES_DIR,$HOME/Pictures"
    "XDG_VIDEOS_DIR,$HOME/Videos"

    "XDG_CURRENT_DESKTOP,Hyprland"
    "XDG_SESSION_TYPE,wayland"
    "XDG_SESSION_DESKTOP,Hyprland"

    "WRL_NO_HARDWARE_CURSORS,1"
    "NIXOS_OZONE_WL,1"
    "NIXPKGS_ALLOW_UNFREE,1"

    "QT_QPA_PLATFORM,xcb"
    "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
    "QT_QPA_PLATFORMTHEME,qt5ct"
    "QT_AUTO_SCREEN_SCALE_FACTOR,1"
    "GDK_BACKEND,wayland"
    "GTK_USE_PORTAL,1"
    "GTK_THEME,Gruvbox-Dark"

    "MOZ_ENABLE_WAYLAND,1"
    "HYPRLAND_NO_SD_NOTIFY,0"
    "XCURSOR_THEME,Bibata-Modern-Classic"
    "XCURSOR_SIZE,24"

    "AQ_DRM_DEVICES,/dev/dri/card1:/dev/dri/card0"
    "GBM_BACKEND,nvidia-drm"
    "__GL_VRR_ALLOWED,0"
    "__GLX_VENDOR_LIBRARY_NAME,nvidia"
    "__VK_LAYER_NV_optimus,NVIDIA_only"
    "LIBVA_DRIVER_NAME,nvidia"
    "NVD_BACKEND,direct"
    "WLR_NO_HARDWARE_CURSORS,1"

    "LANG,en_US.UTF-8"
  ];
}
