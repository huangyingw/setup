#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

#. ./install_basic.sh
#. ./install_driver.sh
. ./install_cuda.sh
. ./install_anaconda2.sh
. ./install_theano.sh
. ./install_keras.sh
. ./install_cudnn.sh
#. ./install_jupyter.sh
#. ./verify_cuda.sh
