{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:sepiabrown/nixpkgs/cusparselt-init";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

  };
}
