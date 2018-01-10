#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

apt-get install -y python3-pip python-dev build-essential
pip3 install --upgrade pip3
pip3 install kaggle-cli
pip3 install --upgrade virtualenv
pip3 install theano
