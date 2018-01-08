#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

pip install pathlib fastai gpustat
conda install -y bcolz
conda install -y -c menpo ffmpeg
