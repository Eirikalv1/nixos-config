{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.eirik = {
    isNormalUser = true;
    description = "eirik";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      vim
      alacritty
      remmina
      python3
      python312Packages.ipython
      openvpn
      nmap
      discord
      vscode
      gobuster
      tldr
      burpsuite
      ngrok
      netcat-gnu
      inetutils
      thc-hydra
      ghidra-bin
      virtualbox
      minecraft
      prismlauncher
      jdk8
      nodePackages_latest.localtunnel
      nix-index
    ];
  };
}
