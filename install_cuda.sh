#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

wget -nc https://developer.download.nvidia.com/compute/cuda/11.1.1/local_installers/cuda_11.1.1_455.32.00_linux.run -P ./installer/
apt-get -y purge $(ubuntu-drivers devices|awk '/recommended/{print $3}')
apt autoremove -y
sh ./installer/cuda_11.1.1_455.32.00_linux.run --driver --silent --toolkit
