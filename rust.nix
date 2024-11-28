{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs
    , flake-utils
    , ...
    }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
    in
    with pkgs; rec {
      devShell = mkShell rec {
        buildInputs = [
          openssl
          pkg-config
          just
          cargo
          cargo-cache
          cargo-expand
          lldb
          rust-analyzer
          rustfmt
          clippy
          rustc
        ];
        LD_LIBRARY_PATH = "${lib.makeLibraryPath buildInputs}";
      };
    });
}
