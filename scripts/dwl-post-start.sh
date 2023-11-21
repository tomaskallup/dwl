#!/usr/bin/env sh

systemctl --user import-environment {,WAYLAND_}DISPLAY
configure-gtk
systemctl --user start dwl-session.target
