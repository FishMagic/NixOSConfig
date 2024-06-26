{ config, lib, pkgs, ... }:

{
  time.timeZone = "Asia/Shanghai";

  users.users.laevatein = {
    isNormalUser = true;
    extraGroups = ["wheel"];
  };

  system.stateVersion = "23.11";
  nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
    fish
  ];

  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;

  environment.sessionVariables = {
    LD_LIBRARY_PATH = ["${pkgs.stdenv.cc.cc.lib}/lib"];
  };

  programs.nix-ld.enable = true;

  nixpkgs.config.allowUnfree = true;
}