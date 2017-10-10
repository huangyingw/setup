#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# configure jupyter and prompt for password
jupyter notebook --generate-config
cp -v ./.jupyter/jupyter_notebook_config.py  $HOME/.jupyter/jupyter_notebook_config.py
cp -v ./.jupyter/jupyter_notebook_config.json  $HOME/.jupyter/jupyter_notebook_config.json

echo "\"jupyter notebook\" will start Jupyter on port 8888"
echo "If you get an error instead, try restarting your session so your $PATH is updated"
