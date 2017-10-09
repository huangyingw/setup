#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ ! -d /media/volgrp/anaconda2  ]
then
    bash "./installer/Anaconda2-5.0.0.1-Linux-x86_64.sh" -b -p /media/volgrp/anaconda2
fi
cp -v ./.bashrc ~/.bashrc
source ~/.bashrc
conda install -y bcolz
conda upgrade -y --all
