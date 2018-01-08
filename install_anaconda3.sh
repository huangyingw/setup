#!/bin/bash -

bash "./installer/Anaconda3-5.0.1-Linux-x86_64.sh" -u -b
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
export CUDA_HOME=/usr/local/cuda
export PATH="$HOME/anaconda3/bin:$PATH"
conda upgrade -y --all