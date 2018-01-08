#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# This script is designed to work with ubuntu 16.04 LTS

# ensure system is updated and has basic build tools
apt-get update
apt-get --assume-yes upgrade
apt-get --assume-yes install tmux build-essential gcc g++ make binutils
apt-get --assume-yes install software-properties-common
