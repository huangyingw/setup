#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

cp -v ./etc/pm/sleep.d/nvidia-reload /etc/pm/sleep.d/nvidia-reload
cp -v ./lib/systemd/system-sleep/nvidia-reload /lib/systemd/system-sleep/nvidia-reload
