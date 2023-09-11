#!/bin/zsh -

# Get Ubuntu version
ubuntu_version=$(lsb_release -rs)

# Convert Ubuntu version to the format used in the NVIDIA cuDNN Support Matrix
case "$ubuntu_version" in
  "18.04")
    distro="ubuntu1804"
    ;;
  "20.04")
    distro="ubuntu2004"
    ;;
  "22.04")
    distro="ubuntu2204"
    ;;
  *)
    echo "Unsupported Ubuntu version: $ubuntu_version"
    exit 1
    ;;
esac

# Get CUDA version
cuda_version=$(nvcc --version | grep "release" | awk '{print $6}' | cut -c2-)

# Convert CUDA version to the format used in the NVIDIA cuDNN Support Matrix
cuda_version="cuda${cuda_version%.*}"

# Define cuDNN version
cudnn_version="8.9.4.*"

# Define the architecture
arch="x86_64"  # Change this to your architecture

# Validate the distro and architecture
if [[ "$distro/$arch" != "ubuntu1804/x86_64" && "$distro/$arch" != "ubuntu2004/x86_64" && "$distro/$arch" != "ubuntu2204/x86_64" && "$distro/$arch" != "debian11/x86_64" && "$distro/$arch" != "ubuntu2004/sbsa" && "$distro/$arch" != "ubuntu2204/sbsa" ]]; then
  echo "Invalid distro/arch combination. Please refer to the NVIDIA cuDNN Support Matrix."
  exit 1
fi

# Update package list
sudo apt-get update

# Install cuDNN library
sudo apt-get install -y libcudnn8="${cudnn_version}-1+${cuda_version}"

# Install cuDNN development package
sudo apt-get install -y libcudnn8-dev="${cudnn_version}-1+${cuda_version}"

# Install cuDNN samples
sudo apt-get install -y libcudnn8-samples="${cudnn_version}-1+${cuda_version}"

echo "cuDNN installation completed."
