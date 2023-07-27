#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

wget -nc https://repo.anaconda.com/archive/Anaconda3-2023.07-1-Linux-x86_64.sh -P ./installer/
bash ./installer/Anaconda3-2023.07-1-Linux-x86_64.sh -u -b
