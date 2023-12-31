{ config, lib, pkgs, ... }:

{
  import ./generic.nix

  networking.hostName = "nixos-wsl";

  wsl.enable = true;
  wsl.defaultUser = "laevatein";
}
