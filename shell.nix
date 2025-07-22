{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    pkg-config
    openssl
    sqlite
    rustc
    cargo
    rust-analyzer
    clippy
    llvmPackages.clang # Important for the linker
  ];
}

