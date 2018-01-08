#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

bash "./installer/Anaconda3-5.0.1-Linux-x86_64.sh" -u -b
source /root/.bashrc
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
export CUDA_HOME=/usr/local/cuda
export PATH="/media/volgrp/anaconda3/bin:$PATH"
conda install -y bcolz
conda upgrade -y --all
