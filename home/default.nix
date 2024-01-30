{ config, lib, pkgs, ... }:

{
  imports = [
    ./programs
  ];

  home.stateVersion = "23.11";

  home.packages = with pkgs;
  [
    hyfetch
    python311
    python311Packages.pip
    python311Packages.virtualenv
    cudaPackages.cudatoolkit
    libgcc
    automake
    ffmpeg
  ];
}
