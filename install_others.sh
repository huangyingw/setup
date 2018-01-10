#!/bin/bash -

pip3 install pathlib fastai gpustat
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
export CUDA_HOME=/usr/local/cuda
export PATH="$HOME/anaconda3/bin:$PATH"
conda install -y bcolz
conda install -y -c menpo ffmpeg
