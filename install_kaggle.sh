#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

pip install kaggle --upgrade
#cp -fv .kaggle/kaggle.json ~/.kaggle/kaggle.json
