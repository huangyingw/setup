#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

apt-get install -y \
    build-essential \
    build-essential \
    freeglut3-dev \
    freeglut3-dev \
    libgl1-mesa-dev \
    libgl1-mesa-glx \
    libglu1-mesa \
    libglu1-mesa-dev \
    libglu1-mesa-dev \
    libx11-dev \
    libxi-dev \
    libxi-dev \
    libxmu-dev \
    libxmu-dev \
    nvidia-cuda-toolkit
rm -fr /media/volgrp/NVIDIA_CUDA-*
/usr/local/cuda/bin/uninstall_cuda_*.pl
sh ./installer/cuda_9.0.176_384.81_linux.run  --silent --toolkit --samples --samplespath=/media/volgrp --tmpdir=/media/volgrp/temp/
cp ./etc/profile /etc/profile \
    && source /etc/profile
cp ./etc/ld.so.conf.d/cuda.conf  /etc/ld.so.conf.d/cuda.conf \
    && ldconfig

cd /media/volgrp/NVIDIA_CUDA-9.0_Samples/ \
    && make -j
./bin/x86_64/linux/release/deviceQuery
