#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

dpkg -i ./installer/cuda-repo-ubuntu1704-9-1-local_9.1.85-1_amd64.deb
apt-key add /var/cuda-repo-<version>/7fa2af80.pub
apt-get update
apt-get install cuda
