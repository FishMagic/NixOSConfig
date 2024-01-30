{ config, lib, pkgs, ... }:

{
  imports = [
    ./programs
  ];

  home.stateVersion = "23.11";

  home.packages = with pkgs;
  [
    hyfetch
    python3
    python3Packages.pip
    python3Packages.virtualenv
    cudaPackages.cudatoolkit
    libgcc
    automake
  ];
}
