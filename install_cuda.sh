#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ ! -f "./installer/cuda_9.0.176_384.81_linux.run" ]
then
    wget "https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run " -O "./installer/cuda_9.0.176_384.81_linux.run"
fi

#apt-get install -y \
    #    build-essential \
    #    build-essential \
    #    freeglut3-dev \
    #    freeglut3-dev \
    #    libgl1-mesa-dev \
    #    libgl1-mesa-glx \
    #    libglu1-mesa \
    #    libglu1-mesa-dev \
    #    libglu1-mesa-dev \
    #    libx11-dev \
    #    libxi-dev \
    #    libxi-dev \
    #    libxmu-dev \
    #    libxmu-dev \
    #    nvidia-cuda-toolkit
#sh ./installer/cuda_9.0.176_384.81_linux.run --silent --toolkit --samples --samplespath=/media/volgrp --tmpdir=/media/volgrp/temp/
cp ./etc/profile /etc/profile \
    && source /etc/profile
cp ./etc/ld.so.conf.d/cuda.conf  /etc/ld.so.conf.d/cuda.conf \
    && ldconfig

cd /media/volgrp/NVIDIA_CUDA-9.0_Samples/ \
    && make -j \
    && ./bin/x86_64/linux/release/deviceQuery
