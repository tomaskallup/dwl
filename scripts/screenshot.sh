#!/usr/bin/env sh

screenshot_output='/tmp/screenshot-output';
rm -f $screenshot_output
if [ "$1" = "select" ]; then
  # Let me select screen to screenshot
  slurp_output=$(slurp -c '#ff0000ff' -ro)
  grim -cg "$slurp_output" - > $screenshot_output
else
  # Take current active screen
  active_screen=$(tac ~/.dwl_info | grep -m1 "selmon 1" | sed -e 's/ .*//')
  grim -co $active_screen - > $screenshot_output
fi

if [ -s "$screenshot_output" ]; then
  cat $screenshot_output | satty --fullscreen --filename $screenshot_output
fi
