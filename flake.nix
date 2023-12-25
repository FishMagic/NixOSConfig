{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, nixos-wsl, home-manager, ... }@inputs: {
    nixosConfigurations = {
      "nixos-wsl" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          nixos-wsl.nixosModules.wsl
          ./hosts/nixos-wsl.nix

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.laevatein = import ./home;
          }
        ];
      };
    };
  };
}
