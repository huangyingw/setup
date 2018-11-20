#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

dpkg -i ./installer/cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64.deb
apt-key add /var/cuda-repo-10-0-local-10.0.130-410.48/7fa2af80.pub
apt-get update
apt-get install -y cuda \
    && rm -fr /var/cuda-repo-10-0-local-10.0.130-410.48/
