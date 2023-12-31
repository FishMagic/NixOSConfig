{ pkgs, ... }: 

let
  temurin8 = pkgs.callPackage ./temurin8.nix {};
  temurin11 = pkgs.callPackage ./temurin11.nix {};
  temurin17 = pkgs.callPackage ./temurin17.nix {};
in
{
  home.packages =
  [
    temurin8
    temurin11
    temurin17
  ];
  
  home.shellAliases = {
      java8 = "${temurin8}/temurin8/bin/java";
      java11 = "${temurin11}/temurin11/bin/java";
      java17 = "${temurin17}/temurin17/bin/java";
  };
}