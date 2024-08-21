{

  description = "test flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    #nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    #nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      #nixpkgs-stable,
      ...
    }:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
        specialArgs = {
          pkgs-stable = import nixpkgs {
            system = "x86_64-linux";
            config.allowUnfree = true;
          };
        };
      };
      homeConfigurations = {
        "askodon" = home-manager.lib.homeManagerConfiguration {
          # Note: I am sure this could be done better with flake-utils or something
          pkgs = import nixpkgs { system = "x86_64-linux"; };

          modules = [
            ./home.nix
            ./alacritty.nix
          ];
        };
      };
    };
}
