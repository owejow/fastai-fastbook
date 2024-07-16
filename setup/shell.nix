# shell.nix
let pkgs = import <nixpkgs> { };
in pkgs.mkShell {
  packages = with pkgs; [
    python311
    graphviz
    (poetry.override { python3 = python311; })
  ];
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
}
