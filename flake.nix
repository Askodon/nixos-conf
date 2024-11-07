{
  description = "Nixos-conf flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvchad4nix = {
      url = "github:nix-community/nix4nvchad";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
      inputs.nixpkgs.follows = "nixpkgs";
    };
 };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      hyprland,
      plasma-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      extraSpecialArgs = {
        inherit system;
        inherit inputs;
      };
      specialArgs = {
        inherit system;
        inherit inputs;
      };
    in
    {
      nixosConfigurations.artemis = lib.nixosSystem {
        modules = [
          #inherit specialArgs;          
          ./nixos/artemis.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              inherit extraSpecialArgs;
              useGlobalPkgs = true;
              useUserPackages = true;
              users.askodon = import ./home/artemis.nix;
              backupFileExtension = "hm-backup";
            };
          }
        ];
      };

      nixosConfigurations.ares = lib.nixosSystem {
        inherit specialArgs;
        modules = [
          ./nixos/ares.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              inherit extraSpecialArgs;
              useGlobalPkgs = true;
              useUserPackages = true;
              users.askodon = import ./home/ares.nix;
              backupFileExtension = "hm-backup";
            };
          }
        ];
      };

      nixosConfigurations.athena = lib.nixosSystem {
        inherit specialArgs;
        modules = [
          ./nixos/athena.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              inherit extraSpecialArgs;
              useGlobalPkgs = true;
              useUserPackages = true;
              #sharedModules = [ plasma-manager.homeManagerModules.plasma-manager ];
              users.askodon = import ./home/athena.nix;
              backupFileExtension = "hm-backup";
            };
          }
        ];
      };

      nixosConfigurations.apollo = lib.nixosSystem {
        inherit specialArgs;
        modules = [ ./nixos/apollo.nix ];
      };
    };
}
