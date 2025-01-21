{
  pkgs ? import <nixpkgs> { },
}:
let
  llvm = pkgs.llvmPackages;
in
(pkgs.mkShell.override { stdenv = pkgs.stdenvAdapters.useMoldLinker llvm.stdenv; }) {
  nativeBuildInputs = with pkgs; [
    clang-tools

    pkg-config

    cmake
    ninja

    just
    git
  ];
}
