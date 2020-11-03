#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

tar xf ./installer/cudnn-11.1-linux-x64-v8.0.4.30.tgz 
cp -v cuda/include/*.* /usr/local/cuda/include/
cp -v cuda/lib64/*.* /usr/local/cuda/lib64/
