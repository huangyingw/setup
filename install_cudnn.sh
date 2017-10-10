#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

conda install -y -c acellera cudnn
dpkg -i installer/libcudnn*+cuda9.0_amd64.deb
