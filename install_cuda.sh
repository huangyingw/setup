#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

dpkg -i ./installer/cuda-repo-ubuntu1604-9-1-local_9.1.85-1_amd64.deb
apt-key add /var/cuda-repo-9-1-local/7fa2af80.pub
apt-get update
apt-get install -y cuda \
    && rm -fr /var/cuda-repo-9-1-local/
