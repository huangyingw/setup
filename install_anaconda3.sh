#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

wget -nc https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh 
bash Anaconda3-2020.07-Linux-x86_64.sh -u -b
