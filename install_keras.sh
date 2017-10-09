#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# install and configure keras
pip install keras==1.2.2
mkdir ~/.keras
cp ./.keras/keras.json  ~/.keras/keras.json
