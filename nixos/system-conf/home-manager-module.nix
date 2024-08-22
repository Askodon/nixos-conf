{ inputs, home-manager, ... }:
{

  # may look a bit different
  home-manager."askodon" = {
    extraSpecialArgs = {
      inherit inputs;
    };
    users = {
      "askodon" = import ./home.nix;
      modules = [
        ./home.nix
        inputs.self.outputs.homeManagerModules.default
      ];
    };
  };

}
