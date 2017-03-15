#!/bin/bash

# Install docker-ce

# Remove old packages if exsits
sudo apt-get remove docker docker-engine

sudo apt-get install \
             apt-transport-https \
             ca-certificates \
             curl \
             software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt-get update

sudo apt-get install -y docker-ce

# Install nvidia-driver
sudo apt-get install -y nvidia-367-dev nvidia-modprobe

# Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
sudo dpkg -i /tmp/nvidia-docker*.deb && rm /tmp/nvidia-docker*.deb
