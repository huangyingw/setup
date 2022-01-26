#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ $(uname) == "Darwin" ]
then
    exit 0
fi

./install_gpu.sh
./install_cuda.sh
./install_cudnn.sh
