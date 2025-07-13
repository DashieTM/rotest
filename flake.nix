{
  description = "camperOk dots";

  inputs = {
    dashNix = {
      url = "github:Xetibo/DashNix";
    };
  };

  outputs = {...} @ inputs: {
    nixosConfigurations = inputs.dashNix.dashNixLib.buildSystems {root = ./.;};
  };
}
