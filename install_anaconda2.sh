#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

realAnaconda="/media/volgrp/anaconda2.5"
~/loadrc/bashrc/mklnk.sh "$HOME/anaconda2" "$realAnaconda"
bash "./installer/Anaconda2-5.0.1-Linux-x86_64.sh" -u -b
source $HOME/.bashrc
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
export CUDA_HOME=/usr/local/cuda
export PATH="$HOME/anaconda2/bin:$PATH"
# added by Anaconda2 4.4.0 installer
export PATH="/media/volgrp/anaconda2/bin:$PATH"
conda install -y bcolz
conda install -y -c menpo ffmpeg
conda upgrade -y --all
