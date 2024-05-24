#!/bin/bash

# Version 2.3.1
# Referenced from https://github.com/Homebrew/homebrew-core/blob/f9851b3f168b806caefff22b3694ca9a21150cd4/Formula/s/scrcpy.rb

SCRCPY_VERSION=2.4
SCRCPY_SERVER_URL="https://github.com/Genymobile/scrcpy/releases/download/v2.4/scrcpy-server-v$SCRCPY_VERSION"
OUT_PATH=./build/app/scrcpy

echo "Downloading prebuild server from $SCRCPY_SERVER_URL"

wget "$SCRCPY_SERVER_URL" -O "prebuilt-server.jar"

meson setup build -Dprebuilt_server=./prebuilt-server.jar
meson compile -C build --verbose

ls -l $OUT_PATH