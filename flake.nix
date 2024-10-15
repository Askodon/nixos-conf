{
  description = "Nixos-conf flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvchad4nix = {
      url = "github:MOIS3Y/nvchad4nix";
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
              users.askodon = import ./home/artemis/home.nix;
              backupFileExtension = "hm-backup";
            };
          }
        ];
      };
      nixosConfigurations.ares = lib.nixosSystem {
        modules = [
          #inherit specialArgs;          
          ./nixos/ares.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              inherit extraSpecialArgs;
              useGlobalPkgs = true;
              useUserPackages = true;
              users.askodon = import ./home/ares/home.nix;
              backupFileExtension = "hm-backup";
            };
          }
        ];
      };
    };
}
