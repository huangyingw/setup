#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

#./install_basic.sh
#./install_driver.sh
#./install_cuda.sh
./install_anaconda2.sh
./install_theano.sh
