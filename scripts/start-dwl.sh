#!/usr/bin/env sh

dwl_path=$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd -P)

dwl_binary=$(realpath "$dwl_path/../dwl")

dbus-run-session $dwl_binary > ~/.dwl_info
