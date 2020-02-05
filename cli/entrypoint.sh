#!/bin/sh -l

if [ -f "$HOME/ignore" ] && grep "^ignore:$BUILD_DIR" "$HOME/ignore"; then
  echo "$BUILD_DIR didn't change"
else
  ${BUILD_COMMAND:-echo} && output=$(netlify $*); echo set-env name=output::$output;
fi
