#!/bin/bash

TARGET_DIR="/usr/share/webdroidx"
ARCH=$(uname -m)

cd /tmp
echo "Download WebDroidX for $ARCH architecture..."
curl -LO https://github.com/bobbyunknown/WebDroidX/raw/refs/heads/main/core/webdroidx-$ARCH.tar.gz > /dev/null 2>&1
echo "Extracting WebDroidX..."
tar -xvf webdroidx-$ARCH.tar.gz > /dev/null 2>&1
echo "Installing WebDroidX..."
cp -r usr/share/webdroidx/* $TARGET_DIR > /dev/null 2>&1
echo "Cleaning up..."
rm -rf webdroidx-$ARCH.tar.gz > /dev/null 2>&1
rm -rf usr/share/webdroidx/* > /dev/null 2>&1
echo "WebDroidX-Core installed successfully!"
