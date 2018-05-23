#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

tar xf /media/volgrp/software/AI/installer/cudnn-9.2-linux-x64-v7.1.tgz
cp -v cuda/include/*.* /usr/local/cuda/include/
cp -v cuda/lib64/*.* /usr/local/cuda/lib64/
