{ config, lib, pkgs, ... }:

{
  imports = [
    ./programs
  ];

  home.stateVersion = "23.11";

  home.packages = with pkgs; let
    temurin-bin-8-priority-8 = temurin-bin-8.overrideAttrs(oldAttrs: {
      meta.priority = 8;
    });
    temurin-bin-11-priority-11 = temurin-bin-11.overrideAttrs(oldAttrs: {
      meta.priority = 11;
    });
    temurin-bin-17-priority-17 = temurin-bin-8.overrideAttrs(oldAttrs: {
      meta.priority = 17;
    });
  in [
    hyfetch
    python310
    libgcc
    automake
    temurin-bin-8-priority-8
    temurin-bin-11-priority-11
    temurin-bin-17-priority-17
  ];
}
