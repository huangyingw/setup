#!/bin/zsh

# 自动获取Ubuntu版本和架构
ubuntu_version=$(lsb_release -rs)
architecture=$(uname -m)

# 定义Ubuntu版本和架构
distro="ubuntu${ubuntu_version//.}"
arch="$architecture"

# 安装新的cuda-keyring包
echo "Installing the new cuda-keyring package..."
wget https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb

# 手动添加新的签名密钥（可选）
echo "Enrolling the new signing key manually..."
wget https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/cuda-archive-keyring.gpg
sudo mv cuda-archive-keyring.gpg /usr/share/keyrings/cuda-archive-keyring.gpg

# 启用网络仓库
echo "Enabling the network repository..."
echo "deb [signed-by=/usr/share/keyrings/cuda-archive-keyring.gpg] https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/ /" | sudo tee /etc/apt/sources.list.d/cuda-$distro-$arch.list

# 添加优先级文件
echo "Adding pin file to prioritize CUDA repository..."
wget https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/cuda-$distro.pin
sudo mv cuda-$distro.pin /etc/apt/preferences.d/cuda-repository-pin-600

# 更新Apt仓库缓存
echo "Updating the Apt repository cache..."
sudo apt-get update

# 安装CUDA SDK
echo "Installing CUDA SDK..."
sudo apt-get install -y cuda

# 包含所有GDS包（可选）
echo "To include all GDS packages..."
sudo apt-get install -y nvidia-gds
