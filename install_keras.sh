#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# install and configure keras
pip3 install keras
mkdir ~/.keras
cp -v ./.keras/keras.json  ~/.keras/keras.json
