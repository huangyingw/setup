#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

dpkg -i /media/volgrp/software/AI/installer/cuda-repo-ubuntu1604-9-2-local_9.2.88-1_amd64.deb
apt-key add /var/cuda-repo-9-1-local/7fa2af80.pub
apt-get update
apt-get install -y cuda \
    && rm -fr /var/cuda-repo-9-1-local/
