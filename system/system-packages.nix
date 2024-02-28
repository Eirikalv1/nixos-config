{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    chromium
    gnome-randr
    git
    pavucontrol
    alsa-firmware
    gnome.gnome-tweaks
  ];

  fonts.packages = with pkgs; [
    font-awesome
    noto-fonts
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}