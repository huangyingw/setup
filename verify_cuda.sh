#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

cd /media/volgrp/NVIDIA_CUDA-*.0_Samples/ \
    && make -j
./bin/x86_64/linux/release/deviceQuery
cd -
