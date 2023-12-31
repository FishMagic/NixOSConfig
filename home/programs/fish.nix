{ config, lib, pkgs, ... }:

{
  home.file.".config/fish/functions/fish_greeting.fish".source = ./fish_greeting.fish;

  programs.fish.enable = true;
}
