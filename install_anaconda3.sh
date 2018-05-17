#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

bash "/media/volgrp/software/AI/installer/Anaconda3-5.1.0-Linux-x86_64.sh" -u -b
