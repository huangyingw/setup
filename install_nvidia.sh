#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# ./install_gpu.sh
./install_cuda.sh
./install_cudnn.sh
