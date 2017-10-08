#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ ! -f "./installer/cuda_9.0.176_384.81_linux.run" ]
then
    wget "https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run " -O "./installer/cuda_9.0.176_384.81_linux.run"
fi

apt-get install -y nvidia-cuda-toolkit libglu1-mesa libxi-dev libxmu-dev libglu1-mesa-dev freeglut3-dev build-essential libx11-dev libxmu-dev libgl1-mesa-dev libglu1-mesa libglu1-mesa-dev libxi-dev
sh ./installer/cuda_9.0.176_384.81_linux.run --silent --toolkit --samples --samplespath=/media/volgrp --tmpdir=/media/volgrp/temp/
