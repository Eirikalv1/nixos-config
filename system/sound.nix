{ config, pkgs, ... }:

{
  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  # security.rtkit.enable = true;
  # services.pipewire = {
    # enable = true;
    # alsa.enable = true;
    # alsa.support32Bit = true;
     # pulse.enable = true;
    # jack.enable = true;
    # wireplumber.enable = true;
  # };
}
