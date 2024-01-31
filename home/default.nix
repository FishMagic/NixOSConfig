{ config, lib, pkgs, ... }:

{
  imports = [
    ./programs
  ];

  home.stateVersion = "23.11";

  home.packages = with pkgs;
  [
    hyfetch
    python39
    python39Packages.pip
    python39Packages.virtualenv
    cudaPackages.cudatoolkit
    gcc
    libgcc
    automake
    ffmpeg
  ];
}
