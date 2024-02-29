{ config, pkgs, ... }:

{
  networking.hostName = "nixbox";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.hosts = {
    "10.10.11.230" = [ "cozyhosting.htb" ];
    "10.10.11.249" = [ "crafty.htb" "play.crafty.htb" ];
  };

  # Enable networking
  networking.networkmanager.enable = true;
}
