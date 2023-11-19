#!/usr/bin/env sh

swayidle -w \
  timeout 300 'lock.sh' \
  timeout 900 'systemctl suspend-then-hibernate' \
  before-sleep 'lock.sh' &
fnott &
blueman-applet &
