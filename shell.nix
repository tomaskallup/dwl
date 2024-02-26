{ pkgs ? import <nixpkgs> {}, unstable ? import <unstable> {}} :

pkgs.mkShell {
  packages = with pkgs; [
    gnumake
    pkg-config
    unstable.wayland
    unstable.xwayland
    unstable.xorg.libxcb
    unstable.xorg.xcbutilwm
    unstable.wayland-protocols
    unstable.wayland-scanner
    unstable.libinput
    unstable.wlroots_0_18
    unstable.libxkbcommon
    pixman
    bear
  ];
}
