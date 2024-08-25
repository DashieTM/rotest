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
    nixosConfigurations =
      (inputs.dashNix.dashNixLib.build_systems [ "nixos" ] ./.);
  };
}
