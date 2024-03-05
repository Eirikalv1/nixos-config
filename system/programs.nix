{ config, pkgs, ... }:

{
  programs = {
    starship.enable = true;
    zsh.enable = true;
    direnv.enable = true;
    nix-ld.enable = true;
    nix-ld.libraries = with pkgs; [
      stdenv.cc.cc.lib
      ncurses
      zlib
    ];
  };

}