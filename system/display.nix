{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.wayland = false;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "no";
    xkb.variant = "";
  };

  # Nvidia drivers
  services.xserver.videoDrivers = [ "nvidia" ];

  # Wayland
  # services.xserver.displayManager.sddm.wayland.enable = true;
  # xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  # Hyprland
  # programs.hyprland = {
    # enable = true;
    # enableNvidiaPatches = true;
    # xwayland.enable = true;
  # };

  # environment.sessionVariables = {
    # WLR_NO_HARDWARE_CURSORS = "1";
    # NIXOS_OZONE_WL = "1";
  # };
}