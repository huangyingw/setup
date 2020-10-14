#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# configure jupyter and prompt for password
cp -v ./.jupyter/jupyter_notebook_config.py $HOME/.jupyter/jupyter_notebook_config.py
cp -v ./.jupyter/jupyter_notebook_config.json $HOME/.jupyter/jupyter_notebook_config.json
mkdir -p $HOME/.jupyter/custom/
cp -v ./.jupyter/custom/custom.js $HOME/.jupyter/custom/custom.js
# cp -v ./.jupyter/custom/startup.py $HOME/.jupyter/custom/startup.py
cp -v ./.ipython/profile_default/startup/disable-warnings.py $HOME/.ipython/profile_default/startup/disable-warnings.py
cp -v ./.jupyter/.jupytext.yml $HOME/
cp -v ./.jupyter/nbconfig/notebook.json $HOME/.jupyter/nbconfig/notebook.json
