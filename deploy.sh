#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

while read ss
do
    ssh -n $ss ~/myproject/git/AI/setup/setup.sh
done < deploy.list
