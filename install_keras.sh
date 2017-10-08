#!/bin/bash - 
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# install and configure keras
pip install -y keras==1.2.2
mkdir ~/.keras
cp ./.keras/keras.json  ~/.keras/keras.json
