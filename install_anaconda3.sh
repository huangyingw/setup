#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

bash "./installer/Anaconda3-5.3.1-Linux-x86_64.sh" -u -b
