#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ ! -d /media/volgrp/anaconda2  ]
then
    bash "./installer/Anaconda2-5.0.0.1-Linux-x86_64.sh" -u -b -p /media/volgrp/anaconda2
fi
cp -v ./.bashrc /root/.bashrc
source /root/.bashrc 
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
export CUDA_HOME=/usr/local/cuda
# added by Anaconda2 4.4.0 installer
export PATH="/media/volgrp/anaconda2/bin:$PATH"
conda install -y bcolz
conda upgrade -y --all
