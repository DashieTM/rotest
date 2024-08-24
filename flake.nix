{
  description = "Dashie dots";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
    stable.url = "github:NixOs/nixpkgs/nixos-24.05";
    dashNix = {
      url = "github:DashieTM/DashNix";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        stable.follows = "stable";
      };
    };
  };

  outputs = { ... }@inputs: {
    nixosConfigurations = (inputs.dashNix.dashNixLib.build_systems [
      "marmo"
      "overheating"
      "spaceship"
    ] ./.) // {
      server = inputs.stable.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
          pkgs = inputs.dashNix.stablePkgs;
        };
        modules = [
          inputs.dashNix.dashNixInputs.sops-nix.nixosModules.sops
          inputs.dashNix.dashNixInputs.dashvim.nixosModules.dashvim
          ./hardware/server/configuration.nix
        ];
      };
    };
  };
}
