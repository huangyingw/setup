#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

wget -nc https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin -P ./installer/ 
mv ./installer/cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget -nc https://developer.download.nvidia.com/compute/cuda/11.1.1/local_installers/cuda-repo-ubuntu2004-11-1-local_11.1.1-455.32.00-1_amd64.deb -P ./installer/ 
dpkg -i ./installer/cuda-repo-ubuntu2004-11-1-local_11.1.1-455.32.00-1_amd64.deb
apt-key add /var/cuda-repo-ubuntu2004-11-1-local/7fa2af80.pub
apt-get update
apt-get -y install cuda
