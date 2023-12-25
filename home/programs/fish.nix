{ config, lib, pkgs, ... }:

{
  home.file.".config/fish/functions/fish_greeting.fish".source = ./fish_greeting.fish;

  programs.fish.enable = true;
  programs.fish.shellAliases = {
      java8 = "${pkgs.temurin-bin-8}/bin/java";
      java11 = "${pkgs.temurin-bin-11}/bin/java";
      java17 = "${pkgs.temurin-bin-17}/bin/java";
  };
}
