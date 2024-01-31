{ config, lib, pkgs, ... }:

{
  imports = [
    ./programs
  ];

  home.stateVersion = "23.11";

  home.packages = with pkgs;
  [
    hyfetch
    gcc
    libgcc
    automake
    ffmpeg
  ];
}
