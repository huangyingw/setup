#!/bin/bash -

. ./install_anaconda2.sh
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
export CUDA_HOME=/usr/local/cuda
export PATH="$HOME/anaconda2/bin:$PATH"
. ./install_tensorflow.sh
. ./install_theano.sh
. ./install_keras.sh
. ./install_pytorch.sh
. ./install_others.sh
. ./install_cudnn.sh
. ./install_jupyter.sh
. ./verify_cuda.sh
