{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    helix
    nil
  ];
  shellHook = ''
    alias rebuild="sudo nixos-rebuild switch --flake ~/nixos-config/"
    export EDITOR=hx
  '';
}
