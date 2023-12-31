{ config, lib, pkgs, ... }:

{
  networking.hostName = "nixos-wsl";

  wsl.enable = true;
  wsl.defaultUser = "laevatein";
}
