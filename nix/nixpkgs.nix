{ self, ... }:
{
  nixpkgs = {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [
      ];
      allowUnsupportedSystem = true;
    };
    # overlays = builtins.attrValues self.overlays;
  };
}
