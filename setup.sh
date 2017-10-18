#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

#. ./install_basic.sh
#. ./install_driver.sh
#. ./install_cuda.sh
#. ./install_anaconda2.sh
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
export CUDA_HOME=/usr/local/cuda
export PATH="/media/volgrp/anaconda2/bin:$PATH"
. ./install_theano.sh
. ./install_keras.sh
. ./install_cudnn.sh
. ./install_jupyter.sh
. ./install_nvidia-reload.sh
#. ./verify_cuda.sh
