#!/usr/bin/env sh

systemctl --user import-environment {,WAYLAND_}DISPLAY PATH DBUS_SESSION_BUS_ADDRESS
systemctl --user start dwl-session.target
