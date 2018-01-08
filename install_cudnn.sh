#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

tar xf ./installer/cudnn-9.1-linux-x64-v7.tgz
cp cuda/include/*.* /usr/local/cuda/include/
cp cuda/lib64/*.* /usr/local/cuda/lib64/
