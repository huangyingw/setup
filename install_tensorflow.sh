#!/bin/bash -

apt-get install python-pip python-dev build-essential
pip install --upgrade pip
pip install --upgrade virtualenv
pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.4.0-cp27-none-linux_x86_64.whl
