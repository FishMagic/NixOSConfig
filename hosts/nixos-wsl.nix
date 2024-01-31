{ config, lib, pkgs, ... }:

{
  networking.hostName = "nixos-wsl";

  wsl.enable = true;
  wsl.defaultUser = "laevatein";

  environment.sessionVariables = {
    LD_LIBRARY_PATH = ["/usr/lib/wsl/lib"];
  };
}
