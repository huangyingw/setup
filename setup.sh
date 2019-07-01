#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

. ./install_basic.sh
. ./install_nvidia.sh
. ./install_anaconda3.sh
export CUDA_HOME=/usr/local/cuda
export PATH="$HOME/anaconda3/bin:$PATH"
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
. ~/myproject/git/AI/fastai/fastai/install_fastai.sh
. ./install_kaggle.sh
. ./configure_jupyter.sh
