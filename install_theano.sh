#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

apt-get install -y python-pip python-dev build-essential
pip install --upgrade pip
pip install kaggle-cli
pip install --upgrade virtualenv
conda install -y theano
cp ./.theanorc ~/.theanorc
