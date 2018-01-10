#!/bin/bash -

apt-get update && apt-get install -y python3-pip python-dev build-essential
pip3 install --upgrade pip3
pip3 install --upgrade virtualenv
pip3 install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.4.0-cp27-none-linux_x86_64.whl
