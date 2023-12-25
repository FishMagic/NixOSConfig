{ config, lib, pkgs, ... }:

{
  imports = [
    ./programs
  ];

  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    hyfetch
    python310
    libgcc
    automake
    temurin-bin-17
  ];
}
