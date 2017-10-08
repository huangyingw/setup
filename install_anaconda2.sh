#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

bash "./installer/Anaconda2-5.0.0.1-Linux-x86_64.sh" -u -b -p /media/volgrp/anaconda2
conda install -y bcolz
conda upgrade -y --all
