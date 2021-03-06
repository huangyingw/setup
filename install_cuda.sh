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
mkdir -p /media/volgrp/usr/local/cuda-8.0
rm /usr/local/cuda-8.0
ln -fs /media/volgrp/usr/local/cuda-8.0 /usr/local/cuda-8.0
/usr/local/cuda/bin/uninstall_cuda_*.pl
mkdir -p /media/volgrp/temp/
sh ./installer/cuda_8.0.61_375.26_linux-run  --silent --toolkit --samples --samplespath=/media/volgrp --tmpdir=/media/volgrp/temp/
cp ./etc/profile /etc/profile \
    && source /etc/profile
cp ./etc/ld.so.conf.d/cuda.conf  /etc/ld.so.conf.d/cuda.conf \
    && ldconfig
