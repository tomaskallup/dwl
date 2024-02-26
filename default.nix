let
  pkgs = import <unstable> { };
in {
  dwl = pkgs.callPackage ./dwl-custom.nix { };
}
