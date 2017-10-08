#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"


if [ ! -f "./installer/cuda_9.0.176_384.81_linux-run" ]
then
    wget "https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run " -O "./installer/cuda_9.0.176_384.81_linux-run"
fi

sh ./installer/cuda_9.0.176_384.81_linux-run --tmpdir=/media/volgrp/temp/
