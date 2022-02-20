#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ $(uname) == "Darwin" ]
then
    wget -nc https://repo.anaconda.com/archive/Anaconda3-2021.11-MacOSX-x86_64.sh -P ./installer/
    bash ./installer/Anaconda3-2021.11-MacOSX-x86_64.sh -u -b
else
    wget -nc https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh -P ./installer/
    bash ./installer/Anaconda3-2020.07-Linux-x86_64.sh -u -b
fi
