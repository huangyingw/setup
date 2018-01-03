#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# install and configure keras
pip install keras
mkdir ~/.keras
echo 'pwd --> $PWD'
cp ./.keras/keras.json  ~/.keras/keras.json
