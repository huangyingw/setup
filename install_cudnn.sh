#!/bin/zsh -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

cp /var/cudnn-local-repo-ubuntu2204-8.9.4.25/cudnn-local-3C3A81D3-keyring.gpg /usr/share/keyrings/
dpkg -i cudnn-local-repo-ubuntu2204-8.9.4.25_1.0-1_amd64.deb

search_output=$(apt-cache search libcudnn)

available_packages=("${(@f)$(echo "$search_output" | awk -F ' - ' '{print $1}')}")

for package in "${available_packages[@]}"; do
    echo "Installing $package..."
    sudo apt-get install -y "$package"
    if [[ $? -eq 0 ]]; then
        echo "Installation of $package succeeded."
    else
        echo "Installation of $package failed."
    fi
done
