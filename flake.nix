{
  description = "camperOk dots";

  inputs = {
    dashNix = {
      url = "github:DashieTM/DashNix";
    };
  };

  outputs =
    { ... }@inputs:
    {
      nixosConfigurations = inputs.dashNix.dashNixLib.build_systems { root = ./.; };
    };
}
