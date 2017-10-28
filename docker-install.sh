#!/bin/bash

echo "Installing Docker-CE (Community Edition) for Ubuntu 17.04 AMD64 >"
echo .......

echo "Update the apt packeage index:"
sudo apt update

echo "Install packages to allow apt to use a repository over HTTPS:"
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

echo "Dockers official GPG key:"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Verify if we have the key with the fingerprint"
sudo apt-key fingerprint 0EBFCD88

echo "Adding repository for install:"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "Updating packages for Docker-CE:"
sudo apt update

echo "Installing Docker-CE (Community Edition)"
sudo apt install docker-ce -y