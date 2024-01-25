#!/usr/bin/env sh

#flameshot gui
grim -g "$(slurp -c '#ff0000ff' -ro)" - | satty --fullscreen --filename -
