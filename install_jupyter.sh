#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# configure jupyter and prompt for password
jupyter notebook --generate-config
cp -v ./.jupyter/jupyter_notebook_config.py  $HOME/.jupyter/jupyter_notebook_config.py
cp -v ./.jupyter/jupyter_notebook_config.json  $HOME/.jupyter/jupyter_notebook_config.json
cp -v ./.jupyter/custom/custom.js   $HOME/.jupyter/custom/custom.js
