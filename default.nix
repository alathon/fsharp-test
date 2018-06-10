with import <nixpkgs>{};

stdenv.mkDerivation rec {
  name = "fsharp-test";
  version = "0.0.1";
  buildInputs = [
    # dotnet
    dotnet-sdk
    ];
}
